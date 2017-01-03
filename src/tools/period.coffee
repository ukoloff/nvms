###
Trailing dot in command line parameters
###

module.exports =
period =
(args)->
  if '.' == args[args.length - 1]
    args.pop()
    true
  else
    period.cmd = "`#{PACKAGE.mingzi} #{argv.join ' '} .`"
    false
