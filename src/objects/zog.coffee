###
Running copy of myself in background
###

# Magic cookie
magic = ->
  "<#{PACKAGE.version}>"

find = (cmd)->
  require('./zogi')[cmd]

# Run background process
module.exports =
fork = (cmd, args...)->
  return unless find cmd
  args = [argv0, "version", magic(), cmd]
    .concat args
  for a, i in args
    args[i] = '"' + a + '"'
  sh.Run args.join(' '), 0

# See whether we are in the background
fork.$ = (args)->
  return if magic() != args.shift()
  return unless cmd = find args.shift()
  cmd.$ args
  exit()
  return
