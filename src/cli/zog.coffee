###
Running copy of myself in background
###

hash = (s)->
  n = 0
  i = s.length
  while i--
    n = ~(n + (i & 0xFF ^ s.charCodeAt i))
  n & 0xFFFF

# Magic cookie
magic =
  "<#{hash do argv0.load}>"

find = (cmd)->
  require('./cmdz')[cmd]?.z

# Run background process
module.exports = exports = (cmd, args...)->
  return unless find cmd
  # Run version command with special parameters
  run.apply @, [0, argv0, "v", magic, cmd].concat args
  return

# See whether we are in the background
exports.$ = (args)->
  return if magic != args.shift()
  return unless cmd = find args.shift()
  cmd args
  exit()
  return
