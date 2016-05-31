install = require './install'

@name = 'remove'

@alias = 'uninstall'

@stage = 'normal'

@title = 'Remove Node.js'

@args = "[all] #{install.args}"

@description = """
Remove specified Node.js version or all installed versions.

NB: No additional confirmation(s) will be requested!
"""

@cmd = ->
  if /^a/i.test argv[1]
    all()
  else
    one()

all = ->
  n = 0
  filter = install.parse(argv.slice 2).local().z
  for r in locals.list() when semver.match r.id, filter
    remove r
    n++
  echo "Node.js versions found & uninstalled: #{n}"

one = ->
  filter = install.parse().local().z
  for r in locals.list() when semver.match r.id, filter
    remove r
    return
  throw Error 'Specified Node.js version not installed!' unless x

remove = (x)->
  echo "removing #{x.path}"
  fs.DeleteFolder fs.BuildPath install2, x.path
  junction.exec 'none' if x.active
