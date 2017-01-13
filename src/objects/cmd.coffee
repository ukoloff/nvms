###
Commands engine
###
lookup = 0
abr = new abbrev

module.exports =
exports = (commands)->
  exports._ = lookup = commands
  for name, cmd of commands
    abr.add
      $: cmd.n = name
      _: cmd.q = aliases cmd.q

  #Dispatch
  if cmd = find argv[0]
    cmd.$ argv.slice 1
    return
  # Unknown or no command
  find 'h'  # help command
  .i()
  return

# Convert aliases member to array
aliases = (str)->
  unless str
    return []
  str
  .split /\s+/
  .sort()

exports.find =
find = (word)->
  lookup[abr.$ word]

# List abbreviations
exports.a = (beginning)->
  for k of res = abr.a(beginning) or abr.a()
    res[k] = lookup[res[k]]
  res
