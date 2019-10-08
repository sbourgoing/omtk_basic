from omtk import constants
from omtk.core import classRig
from omtk.core import className

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

    def __init__(self, *args, **kwargs):
        super(BasicNomenclature, self).__init__(*args, **kwargs)


class RigBasic(classRig.Rig):
    """
    Custom rig implementation for basic rigs with some parameters tweaked as sbourgoing like want them
    """

    LEGACY_ARM_IK_CTRL_ORIENTATION = True
    LEGACY_LEG_IK_CTRL_ORIENTATION = True

    def __init__(self, *args, **kwargs):
        super(RigBasic, self).__init__(*args, **kwargs)
        self._color_ctrl = True

    def _get_nomenclature_cls(self):
        return BasicNomenclature

    def pre_build(self):
        super(RigBasic, self).pre_build(create_master_grp=True, create_layer_jnt=True)
        
def register_plugin():
    return RigBasic