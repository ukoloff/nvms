###
Commands engine
###
abr = new abbrev
cmdz  = require './cmdz'

exports.f =
find = (word)->
  cmdz[abr.$ word]

# List abbreviations
exports.a = (beginning)->
  for k of res = abr.a(beginning) or abr.a()
    res[k] = cmdz[res[k]]
  res

# Convert aliases member to array
aliases = (str)->
  unless str
    return []
  str
  .split /\s+/
  .sort()

# Initialize abbreviations
for name, cmd of cmdz
  abr.add
    $: cmd.n = name
    _: cmd.q = aliases cmd.q

#Dispatch
if cmd = find argv[0]
  cmd.$ argv.slice 1
else
  # Unknown or no command
  find 'h'  # help command
  .i()
