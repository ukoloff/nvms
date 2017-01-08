exports.t = 'Use (set default) already installed Node.js version'

exports._ = "[ none | #{vfilter.$} ]"

exports.h = """
  Make specified Node.js version active for all processes of current user.

  Only installed versions are used. Use `#{PACKAGE.mingzi} install` for new ones.

  Say `#{PACKAGE.mingzi} use none` to temporarily disable #{PACKAGE.mingzi}.
  """

exports.$ = (args)->
  if 'none' == args[0]
    echo "Temporary disabling", PACKAGE.mingzi
    junction()
  else if x = vfilter(args).local().last()
    x.use()
  else
    throw Error 'Specified Node.js version not installed!'
