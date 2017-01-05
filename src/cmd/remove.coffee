exports.alias = 'uninstall'

exports.title = 'Remove one or several Node.js version(s)'

exports.args = "[all] #{vfilter.$} [.]"

exports.help = """
  Remove single specified Node.js version or all version matching filter.

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
  filter = vfilter(args).local()
  for r in locals() when filter.match r.id
    remove r
    n++
  echo "\nNode.js versions found & uninstalled: #{n}" if danger

one = (args)->
  unless z = vfilter(args).local().first()
    throw Error 'Specified Node.js version not installed!'
  remove z

remove = (x)->
  unless danger
    echo "Would remove #{x.path}."
    return
  echo "Removing", x.path
  fs.DeleteFolder fs.BuildPath install2, x.path
  junction.exec 'none' if x.active
