install = require './install'

exports.alias = 'uninstall'

exports.title = 'Remove Node.js'

exports.args = "[all] #{install.args} [.]"

exports.help = """
  Remove specified Node.js version or all installed versions.

  Without trailing dot command only shows candidate(s) to uninstall.

  With trailing dot removing will proceed without additional confirmations!
  """

danger = false

exports.cmd = (args)->
  danger = period args
  if /^a/i.test args[0]
    all args.slice 1
  else
    one args
  return if danger
  echo """

    To actually uninstall say #{period.cmd}
    """

all = (args)->
  n = 0
  filter = install.parse(args).local().z
  for r in locals.list() when semver.match r.id, filter
    remove r
    n++
  echo "\nNode.js versions found & uninstalled: #{n}" if danger

one = (args)->
  filter = install.parse(args).local().z
  for r in locals.list() when semver.match r.id, filter
    remove r
    return
  throw Error 'Specified Node.js version not installed!'

remove = (x)->
  unless danger
    echo "Would remove #{x.path}."
    return
  echo "Removing #{x.path}"
  fs.DeleteFolder fs.BuildPath install2, x.path
  junction.exec 'none' if x.active
