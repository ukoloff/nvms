###
Running copy of myself in background
###

# Magic cookie
magic = ->
  "<#{PACKAGE.version}>"

# Find command
command = (name)->
  cmd = require './cmd'
  c = cmd.find name
  c if c and c.name == name and c._

# Run background process
module.exports =
fork = (cmd, args...)->
  return unless cmd = command cmd
  args = [wsh.ScriptFullName, "version", magic(), cmd.name]
    .concat args
  for a, i in args
    args[i] = '"' + a + '"'
  sh.Run args.join(' '), 0

# See whether we are in the background
fork.$ = (args)->
  return if magic() != args.shift()
  return unless cmd = command args.shift()
  cmd._ args
  do exit
