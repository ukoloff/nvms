###
Trailing dot in command line parameters
###

module.exports = exports = (args)->
  if '.' == args[args.length - 1]
    args.pop()
    true
  else
    exports.$ = "#{PACKAGE.mingzi} #{argv.join ' '} ."
    false
