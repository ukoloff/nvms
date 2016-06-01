install = require './install'

@name = 'use'

@stage = 'normal'

@title = 'Use installed before Node.js version'

@args = "[ none | #{install.args} ]"

@help = """
  Make specified Node.js version active for all processes of current user.

  Only installed versions are used. Use #{PACKAGE.mingzi} install for new ones.

  Say `#{PACKAGE.mingzi} use none` to temporarily disable #{PACKAGE.mingzi}.
  """

@cmd = (args)->
  if 'none' == args[0]
    return none()
  filter = install.parse(args).local().z
  for r in locals.list().reverse() when semver.match r.id, filter
    x = r
    break
  throw Error 'Specified Node.js version not installed!' unless x

  echo "Using #{x.path}"
  junction.exec x.path

none = ->
  echo "Temporary disabling #{PACKAGE.mingzi}"
  junction.exec 'none'
