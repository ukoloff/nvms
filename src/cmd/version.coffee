exports.title = 'Show version'

exports.help = "Displays #{PACKAGE.mingzi} version."

exports.cmd = ->
  echo PACKAGE.version
