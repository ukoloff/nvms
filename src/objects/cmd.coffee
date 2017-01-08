###
Commands engine
###
all = []
abr = new abbrev
lookup = {}

module.exports =
list = (commands)->
  for name, cmd of commands
    cmd.name = name
    cmd.alias = a = if cmd.alias
      cmd.alias.split /\s+/
      .sort()
    else
      []
    abr.add
      $: cmd.name
      _: a
    lookup[cmd.name] = cmd
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
    do none
    autoupgrade()
    exit 1
  cmd.cmd.call cmd, argv.slice 1
  autoupgrade()

list.header =
header = ->
  echo """
    #{PACKAGE.mingzi} v#{PACKAGE.version}: #{PACKAGE.description}

    """

none = ->
  do header
  echo """
    Run #{PACKAGE.mingzi} help for instructions.
    """

# List abbreviations
list.a = (beginning)->
  for k of list = abr.a(beginning) or abr.a()
    list[k] = lookup[list[k]]
  list
