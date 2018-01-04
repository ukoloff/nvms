vfilter = require '../vfilter'

exports.q = 'uninstall drop'

exports.t = 'Remove one or several Node.js version(s)'

exports._ = "[all] #{vfilter.$} [.]"

exports.h = """
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
  unless danger
    echo "\nTo actually uninstall say:", period.$
  return

all = (args)->
  n = 0
  vfilter args
  .local()
  .each (z)->
    remove z
    n++
  if danger
    echo "\nNode.js version(s) found & uninstalled:", n
  return

one = (args)->
  unless z = vfilter(args).local().first()
    throw Error 'Specified Node.js version not installed!'
  remove z
  return

remove = (x)->
  unless danger
    echo "Would remove:", x.path
    return
  echo "Removing:", x.path
  junction() if x.active
  require '../zog'
    # ZOG::bye
    .b x.path
  return
