import collections
import pymel.core as pymel

from omtk import constants
from omtk.core import classRig
from omtk.core import className
from omtk.core.classCtrl import BaseCtrl
from omtk.libs import libRigging
from omtk.libs import libCtrlShapes
from omtk.libs import libAttr

class BasicNomenclature(className.BaseName):

    root_jnt_name = 'root'
    type_anm = 'ctrl'
    type_jnt = None
    type_rig = None
    # TODO: fix collision when anm_grp and rig_grp are created with the same nomenclature (they are at the same level)
    type_anm_grp = 'cgrp'
    type_rig_grp = 'rgrp'

    root_anm_name = 'main_ctrl'  # todo: eventually rename to Main_Ctrl
    root_anm_master_name = 'master_ctrl'

    root_geo_name = 'mesh'
    root_rig_name = 'data'

    root_motion_name = 'root_motion_ctrl'

    def __init__(self, *args, **kwargs):
        super(BasicNomenclature, self).__init__(*args, **kwargs)

class CtrlRootMotion(BaseCtrl):
    def __createNode__(self, size=None, refs=None, *args, **kwargs):
        # Resolve size automatically if refs are provided.
        ref = next(iter(refs), None) if isinstance(refs, collections.Iterable) else refs
        if size is None and ref is not None:
            size = libRigging.get_recommended_ctrl_size(ref)
        else:
            size = 1.0

        node = libCtrlShapes.create_double_sided_arrow_x_oriented_shape(size=size, *args, **kwargs)

        return node


class RigBasic(classRig.Rig):
    """
    Custom rig implementation for basic rigs with some parameters tweaked as sbourgoing like want them
    """

    LEGACY_ARM_IK_CTRL_ORIENTATION = True
    LEGACY_LEG_IK_CTRL_ORIENTATION = True

    def __init__(self, *args, **kwargs):
        super(RigBasic, self).__init__(*args, **kwargs)
        self._color_ctrl = True
        self.root_motion = None
        self.root_motion_data_grp = None
        self.grp_ctrls = None

    def _get_nomenclature_cls(self):
        return BasicNomenclature

    def pre_build(self):
        super(RigBasic, self).pre_build(create_master_grp=False, create_layer_jnt=True)

        # Ensure grp_master is setup with the wanted name
        self.grp_master = self.build_grp(classRig.RigGrp, self.grp_master, self.name + '_rig')
        self.grp_ctrls = self.build_grp(classRig.RigGrp, self.grp_ctrls, "ctrls")
        self.grp_ctrls.setParent(self.grp_master)
        self.grp_anm.setParent(self.grp_ctrls)
        
    def build(self):
        """
        :return:
        """
        super(RigBasic, self).build(constraint_root=False)

    def unbuild(self, strict=False, **kwargs):
        """
        Remove the root motion data unused
        :param strict:
        :param kwargs:
        :return:
        """
        super(RigBasic, self).unbuild()

        self.grp_ctrls = self._unbuild_node(self.grp_ctrls)
        self.root_motion = self._unbuild_node(self.root_motion)
        pymel.delete(self.root_motion_data_grp)

    def post_build(self):
        """
        Use the post build method to setup the needed root motion controller
        """
        if self.grp_jnt:
            self.root_motion = self.build_grp(CtrlRootMotion, self.root_motion, self.nomenclature.root_motion_name,
                                              size=100.0)

            # Setup constraint driving attribute

            if not self.root_motion.node.hasAttr('follow_translate_x'):
                # Translation
                follow_tran_x_attr = libAttr.addAttr(self.root_motion.node, 'follow_translate_x', at='float',
                                                     defaultValue=1.0,min=0.0, max=1.0, k=True)
                follow_tran_y_attr = libAttr.addAttr(self.root_motion.node, 'follow_translate_y', at='float',
                                                     defaultValue=0.0,min=0.0, max=1.0, k=True)
                follow_tran_z_attr = libAttr.addAttr(self.root_motion.node, 'follow_translate_z', at='float',
                                                     defaultValue=1.0,min=0.0, max=1.0, k=True)

                # Rotation
                follow_rot_x_attr = libAttr.addAttr(self.root_motion.node, 'follow_rotate_x', at='float',
                                                    defaultValue=0.0,min=0.0, max=1.0, k=True)
                follow_rot_y_attr = libAttr.addAttr(self.root_motion.node, 'follow_rotate_y', at='float',
                                                    defaultValue=0.0,min=0.0, max=1.0, k=True)
                follow_rot_z_attr = libAttr.addAttr(self.root_motion.node, 'follow_rotate_z', at='float',
                                                    defaultValue=0.0,min=0.0, max=1.0, k=True)
            else:
                follow_tran_x_attr = pymel.Attribute(self.root_motion.node.name() + '.follow_translate_x')
                follow_tran_y_attr = pymel.Attribute(self.root_motion.node.name() + '.follow_translate_y')
                follow_tran_z_attr = pymel.Attribute(self.root_motion.node.name() + '.follow_translate_z')

                follow_rot_x_attr = pymel.Attribute(self.root_motion.node.name() + '.follow_rotate_x')
                follow_rot_y_attr = pymel.Attribute(self.root_motion.node.name() + '.follow_rotate_y')
                follow_rot_z_attr = pymel.Attribute(self.root_motion.node.name() + '.follow_rotate_z')

            self.root_motion.setParent(self.grp_ctrls)
            root_motion_const = pymel.parentConstraint(self.root_motion.node, self.grp_jnt, maintainOffset=True)

            root_motion_targets = []

            if self.grp_anm:
                root_motion_targets.append(self.grp_anm)

            # Get the module that would be parented to the root and add them to list of root motion.
            # Also ensure that no parenting exist with the root
            # TODO - Improve this part and improve space switch management
            for c in self.grp_jnt.listRelatives(c=True, type='joint'):
                module = self.get_module_by_input(c)
                if module and module.grp_anm:
                    all_const = module.grp_anm.listRelatives(type='constraint')
                    to_delete = []
                    for const in all_const:
                        if self.grp_jnt in const.getTargetList():
                            to_delete.append(const)
                    pymel.delete(to_delete)
                    root_motion_targets.append(module.get_ctrls()[0])


            # Setup the different group to extract root motion
            pymel.select(None)
            self.root_motion_data_grp = pymel.group(name='root_motion_data')
            root_motion_extractoffset_grp = pymel.group(name='root_motion_extractor_offset')
            root_motion_extract_loc = pymel.spaceLocator(name='root_motion_extractor')
            root_motion_receiver_grp = pymel.group(name='root_motion_receiver_offset')
            root_motion_receiver_loc = pymel.spaceLocator(name='root_motion_receiver_locator')

            pymel.parent(self.root_motion_data_grp, self.grp_rig)
            pymel.parent(root_motion_extractoffset_grp, self.root_motion_data_grp)
            pymel.parent(root_motion_extract_loc, root_motion_extractoffset_grp)
            pymel.parent(root_motion_receiver_grp, self.root_motion_data_grp)
            pymel.parent(root_motion_receiver_loc, root_motion_receiver_grp)

            motion_space_constraint = pymel.parentConstraint(root_motion_targets, root_motion_extractoffset_grp,
                                                             mo=True)
            pymel.parentConstraint(root_motion_receiver_loc, self.root_motion.offset, mo=True)

            # Build root motion ctrl space enumeration to choose the parent
            enum_string = ''
            for i, t in enumerate(root_motion_targets):
                if i + 1 < len(root_motion_targets):
                    enum_string += t.name() + ':'
                else:
                    enum_string += t.name() + ':none'

            if not self.root_motion.node.hasAttr('parent'):
                attr_space = libAttr.addAttr(self.root_motion.node, 'parent', at='enum', enumName=enum_string, k=True)
            else:
                attr_space = pymel.getAttr(self.root_motion.node.name() + '.parent')
            atts_weights = motion_space_constraint.getWeightAliasList()

            for i, att_weight in enumerate(atts_weights):
                att_enabled = libRigging.create_utility_node(  # Equal
                    'condition',
                    firstTerm=attr_space,
                    secondTerm=i,
                    colorIfTrueR=1,
                    colorIfFalseR=0
                ).outColorR
                pymel.connectAttr(att_enabled, att_weight)

            # Now, setup the root motion receiver connection with matrix
            decompose_root_motion = pymel.createNode('decomposeMatrix', name='root_motion_decompose_matrix')
            pymel.connectAttr(root_motion_extract_loc.worldMatrix, decompose_root_motion.inputMatrix)

            mutldiv_root_motion_quatx = pymel.createNode('multiplyDivide', name='multdiv_root_motion_quatx')
            mutldiv_root_motion_quaty = pymel.createNode('multiplyDivide', name='multdiv_root_motion_quaty')
            mutldiv_root_motion_quatz = pymel.createNode('multiplyDivide', name='multdiv_root_motion_quatz')

            mutldiv_root_motion_transx = pymel.createNode('multiplyDivide', name='multdiv_root_motion_transx')
            mutldiv_root_motion_transy = pymel.createNode('multiplyDivide', name='multdiv_root_motion_transy')
            mutldiv_root_motion_transz = pymel.createNode('multiplyDivide', name='multdiv_root_motion_transz')

            # Quat connection
            pymel.connectAttr(decompose_root_motion.outputQuatX, mutldiv_root_motion_quatx.input1X)
            pymel.connectAttr(follow_rot_x_attr, mutldiv_root_motion_quatx.input2X)

            pymel.connectAttr(decompose_root_motion.outputQuatY, mutldiv_root_motion_quaty.input1X)
            pymel.connectAttr(follow_rot_y_attr, mutldiv_root_motion_quaty.input2X)

            pymel.connectAttr(decompose_root_motion.outputQuatZ, mutldiv_root_motion_quatz.input1X)
            pymel.connectAttr(follow_rot_z_attr, mutldiv_root_motion_quatz.input2X)

            # Translation connection
            pymel.connectAttr(decompose_root_motion.outputTranslateX, mutldiv_root_motion_transx.input1X)
            pymel.connectAttr(follow_tran_x_attr, mutldiv_root_motion_transx.input2X)

            pymel.connectAttr(decompose_root_motion.outputTranslateY, mutldiv_root_motion_transy.input1X)
            pymel.connectAttr(follow_tran_y_attr, mutldiv_root_motion_transy.input2X)

            pymel.connectAttr(decompose_root_motion.outputTranslateZ, mutldiv_root_motion_transz.input1X)
            pymel.connectAttr(follow_tran_z_attr, mutldiv_root_motion_transz.input2X)

            # Normalize back the quat convert it to euler
            root_motion_normalized_quat = pymel.createNode('quatNormalize', name='quatnormalize_root_motion_extract')
            pymel.connectAttr(mutldiv_root_motion_quatx.outputX, root_motion_normalized_quat.inputQuatX)
            pymel.connectAttr(mutldiv_root_motion_quaty.outputX, root_motion_normalized_quat.inputQuatY)
            pymel.connectAttr(mutldiv_root_motion_quatz.outputX, root_motion_normalized_quat.inputQuatZ)
            pymel.connectAttr(decompose_root_motion.outputQuatW, root_motion_normalized_quat.inputQuatW)

            root_motion_quatToEuler = pymel.createNode('quatToEuler', name='quatToEuler_root_motion_extract')
            pymel.connectAttr(root_motion_normalized_quat.outputQuat, root_motion_quatToEuler.inputQuat)

            # Connect everything to the receiver
            pymel.connectAttr(root_motion_quatToEuler.outputRotateX, root_motion_receiver_grp.rotateX)
            pymel.connectAttr(root_motion_quatToEuler.outputRotateY, root_motion_receiver_grp.rotateY)
            pymel.connectAttr(root_motion_quatToEuler.outputRotateZ, root_motion_receiver_grp.rotateZ)

            pymel.connectAttr(mutldiv_root_motion_transx.outputX, root_motion_receiver_grp.translateX)
            pymel.connectAttr(mutldiv_root_motion_transy.outputX, root_motion_receiver_grp.translateY)
            pymel.connectAttr(mutldiv_root_motion_transz.outputX, root_motion_receiver_grp.translateZ)

        else:
            self.warning("Could not find any root joint, root motion ctrl will not be setup")


        
def register_plugin():
    return RigBasic