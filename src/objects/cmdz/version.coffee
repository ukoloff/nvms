exports.title = 'Show version'

exports.help = "Displays #{PACKAGE.mingzi} version."

exports.cmd = (args)->
  echo PACKAGE.version
  zog.$ args
