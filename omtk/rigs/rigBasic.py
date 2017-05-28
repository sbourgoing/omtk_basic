from omtk import constants
from omtk.core import classRig
from omtk.core import className

class BasicNomenclature(className.BaseName):

    root_jnt_name = 'root_jnt'
    type_anm = 'ctrl'
    type_anm_grp = 'ctrl_grp'

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