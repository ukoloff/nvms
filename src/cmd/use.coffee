install = require './install'

exports.title = 'Use (set default) already installed Node.js version'

exports.args = "[ none | #{install.args} ]"

exports.help = """
  Make specified Node.js version active for all processes of current user.

  Only installed versions are used. Use `#{PACKAGE.mingzi} install` for new ones.

  Say `#{PACKAGE.mingzi} use none` to temporarily disable #{PACKAGE.mingzi}.
  """

exports.cmd = (args)->
  if 'none' == args[0]
    return none()
  filter = install.parse(args).local().z
  for r in locals().reverse() when semver.match r.id, filter
    x = r
    break
  throw Error 'Specified Node.js version not installed!' unless x

  echo "Using #{x.path}"
  junction.exec x.path

none = ->
  echo "Temporary disabling #{PACKAGE.mingzi}"
  junction.exec 'none'
