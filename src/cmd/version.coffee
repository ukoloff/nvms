exports.title = 'Show version'

exports.help = "Displays #{PACKAGE.mingzi} version."

exports.cmd = (args)->
  run = try
    upgrade.test args[0]
  unless run
    echo PACKAGE.version
