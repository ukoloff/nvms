exports.t = 'Show version'

exports.h = "Displays #{PACKAGE.mingzi} version."

exports.$ = (args)->
  echo PACKAGE.version
  exit()
  return
