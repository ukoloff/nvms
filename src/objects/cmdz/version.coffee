exports.title = 'Show version'

exports.help = "Displays #{PACKAGE.mingzi} version."

exports.$ = (args)->
  echo PACKAGE.version
  zog.$ args
