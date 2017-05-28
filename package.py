name = 'omtk_basic'

version = '0.0.1'

description = 'Basic rig plugin definition for omtk'

requires = ['omtk-0.4']

def commands():
    env.OMTK_PLUGINS.append('{root}')

