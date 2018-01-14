###
Trailing dot in command line parameters
###

module.exports = exports = (args)->
  if '.' != args[args.length - 1]
    return
  args.pop()
  true

exports.$ = ->
  "#{PACKAGE.mingzi} #{argv.join ' '} ."
