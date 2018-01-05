###
Commands engine
###
cmdz  = require './cmdz'

# Run asynchrnous step if needed
do routine.$

abr = do abbrev

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
  abr.add name, cmd.q = aliases cmd.q

#Dispatch
if cmd = cmdz[abr.$ argv[0]]
  if /^[h?]/.test argv[1]
    require './cmdz/help'
      .$ [argv[0]].concat argv.slice 2
  else
    cmd.$ argv.slice 1
else
  # Unknown or no command
  require './cmdz/help'
    .i()
