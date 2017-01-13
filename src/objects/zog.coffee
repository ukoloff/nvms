###
Running copy of myself in background
###

# Magic cookie
magic =
  "<#{PACKAGE.version}>"

find = (cmd)->
  require('./zogi')[cmd]

# Run background process
module.exports =
exports = (cmd, args...)->
  return unless find cmd
  run.apply @, [0, argv0, "version", magic, cmd].concat args
  return

# See whether we are in the background
exports.$ = (args)->
  return if magic != args.shift()
  return unless cmd = find args.shift()
  cmd.$ args
  exit()
  return
