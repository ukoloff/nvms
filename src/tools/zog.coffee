###
Running copy of myself in background
###

# Magic cookie
magic = ->
  "<#{PACKAGE.version}>"

# Run background process
module.exports =
fork = (cmd, args...)->
  return unless zogi[cmd]
  args = [wsh.ScriptFullName, "version", magic(), cmd]
    .concat args
  for a, i in args
    args[i] = '"' + a + '"'
  sh.Run args.join(' '), 0

# See whether we are in the background
fork.$ = (args)->
  return if magic() != args.shift()
  return unless cmd = zogi[args.shift()]
  cmd args
  do exit
