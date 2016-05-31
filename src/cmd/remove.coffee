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

@cmd = (args)->
  if /^a/i.test args[0]
    all args.slice 1
  else
    one args

all = (args)->
  n = 0
  filter = install.parse(args).local().z
  for r in locals.list() when semver.match r.id, filter
    remove r
    n++
  echo "Node.js versions found & uninstalled: #{n}"

one = (args)->
  filter = install.parse(args).local().z
  for r in locals.list() when semver.match r.id, filter
    remove r
    return
  throw Error 'Specified Node.js version not installed!'

remove = (x)->
  echo "removing #{x.path}"
  fs.DeleteFolder fs.BuildPath install2, x.path
  junction.exec 'none' if x.active
