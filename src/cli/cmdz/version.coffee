exports.t = 'Show version'

exports.h = "Displays #{PACKAGE.mingzi} version."

exports.$ = (args)->
  echo PACKAGE.version
  if args.length
    require '../zog'
      .$ args
  exit()
  return
