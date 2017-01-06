###
Running copy of myself in background
###

# Magic cookie
magic = ->
  "<#{PACKAGE.version}>"

# Find command
command = (name)->
  c = cmd.find name
  c if c and c.name == name and c._

# Run background process
module.exports =
fork = (cmd, args...)->
  return unless cmd = command cmd
