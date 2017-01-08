exports.alias = 'uninstall drop'

exports.title = 'Remove one or several Node.js version(s)'

exports.args = "[all] #{vfilter.$} [.]"

exports.help = """
  Remove single specified Node.js version or all version matching filter.

  Without trailing dot command only shows candidate(s) to uninstall.

  With trailing dot removing will proceed without additional confirmations!
  """

danger = false

exports.$ = (args)->
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
  vfilter args
  .local()
  .each (z)->
    remove z
    n++
  if danger
    echo "\nNode.js version(s) found & uninstalled:", n

one = (args)->
  unless z = vfilter(args).local().first()
    throw Error 'Specified Node.js version not installed!'
  remove z

remove = (x)->
  unless danger
    echo "Would remove:", x.path
    return
  x.drop()
