###
Commands engine
###
lookup = 0
abr = new abbrev

aliases = (str)->
  unless str
    return []
  str
  .split /\s+/
  .sort()

module.exports =
list = (commands)->
  list._ = lookup = commands
  for name, cmd of commands
    abr.add
      $: cmd.n = name
      _: cmd.q = aliases cmd.q
  do dispatch
  return

list.find =
find = (word)->
  lookup[abr.$ word]

dispatch = ->
  if cmd = find argv[0]
    cmd.$ argv.slice 1
    return
  # Unknown or no command
  find 'h'  # help command
  .i()
  return

# List abbreviations
list.a = (beginning)->
  for k of res = abr.a(beginning) or abr.a()
    res[k] = lookup[res[k]]
  res
