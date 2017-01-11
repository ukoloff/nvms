###
Commands engine
###
all = []
abr = new abbrev
lookup = {}

aliases = (str)->
  unless str
    return []
  str
  .split /\s+/
  .sort()

module.exports =
list = (commands)->
  for name, cmd of commands
    cmd.n = name
    cmd.q = alias = aliases cmd.q
    abr.add
      $: name
      _: alias
    lookup[name] = cmd
    all.push cmd
  do dispatch

list.all = all

list.find =
find = (word)->
  lookup[abr.$ word]

dispatch = ->
  unless cmd = find argv[0]
    find 'h'  # help command
    .i()
    upgrade.hint()
    exit 1
  cmd.$ argv.slice 1
  upgrade.hint()

# List abbreviations
list.a = (beginning)->
  for k of list = abr.a(beginning) or abr.a()
    list[k] = lookup[list[k]]
  list
