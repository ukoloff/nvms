exports.t = 'Show version'

exports.h = "Displays #{PACKAGE.mingzi} version."

exports.$ = (args)->
  echo PACKAGE.version
  require '../zog'
    .$ args
  exit()
  return
