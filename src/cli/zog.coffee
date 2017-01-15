###
Running copy of myself in background
###

adler32 = (s)->
  a = 1
  b = 0
  i = s.length
  while i--
    a = (a + s.charCodeAt i) % 65521
    b = (b + a) % 65521
  b << 16 + a

# Magic cookie
magic =
  "<#{adler32 do argv0.load}>"

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
