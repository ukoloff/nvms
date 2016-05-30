install = require './install'

@name = 'remove'

@alias = 'uninstall'

@stage = 'normal'

@title = 'Remove Node.js'

@args = require './install'
.args

@description = """
Remove specified Node.js version
"""

@cmd = ->
  filter = install.parse().local().z
  for r in locals.list() when semver.match r.id, filter
    x = r
    break
  throw Error 'Specified Node.js version not installed!' unless x

  echo "removing #{x.path}"
  fs.DeleteFolder fs.BuildPath install2, x.path
  junction.exec 'system' if x.active
