###
Commands engine
###
abr = new abbrev
cmdz  = require './cmdz'

# Convert aliases member to array
aliases = (str)->
  unless str
    return []
  str
  .split /\s+/
  .sort()

# Initialize abbreviations
for name, cmd of cmdz
  cmd.A = abr   # Give command access to abbreviations
  abr.add
    $: name
    _: cmd.q = aliases cmd.q

#Dispatch
if cmd = cmdz[abr.$ argv[0]]
  cmd.$ argv.slice 1
else
  # Unknown or no command
  require './cmdz/help'
    .i()
