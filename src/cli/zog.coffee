###
Running copy of myself in background
###
cmdz = require './cmdz'

module.exports = exports = (args)->
  if args.shift() == magic
    (cmdz[args.shift()].z)? args
  exit()
  return

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

# Install handlers
for k of cmdz when cmdz[k].z
  exports[k] = do (k)-> (args...)->
    # Run version command with special parameters
    run.apply @, [0, argv0, "v", magic, k].concat args
    return
