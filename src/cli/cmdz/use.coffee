vfilter = require '../vfilter'

exports.t = 'Use (set default) already installed Node.js version'

exports._ = "[ none | #{vfilter.$} ]"

exports.h = """
  Make specified Node.js version active for all processes of current user.

  Only installed versions are used. Use `#{PACKAGE.mingzi} install` for new ones.

  Say `#{PACKAGE.mingzi} use none` to temporarily disable #{PACKAGE.mingzi}.
  """

exports.$ = (args)->
  if 'none' == args[0]
    junction()
  else if loc = vfilter(args).local().last()
    locals.u loc
  else
    throw Error 'Specified Node.js version not installed!'
  return
