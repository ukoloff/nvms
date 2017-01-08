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

autoupgrade = ->
  x = {}
  if v = upgrade.test()
    x.upgrade = "New version v#{v}"
  if v = remotes.$()
    x.install = "Node.js version v#{v}"

  for k, v of x
    unless updates
      echo()
      updates = true
    echo "// Update: #{v} available. Upgrade with: #{PACKAGE.mingzi} #{k}"
  return

dispatch = ->
  unless cmd = find argv[0]
    find 'help'
    .i()
    autoupgrade()
    exit 1
  cmd.$ argv.slice 1
  autoupgrade()

# List abbreviations
list.a = (beginning)->
  for k of list = abr.a(beginning) or abr.a()
    list[k] = lookup[list[k]]
  list
