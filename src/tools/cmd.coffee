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
      word: cmd.name
      aliases: a
    lookup[cmd.name] = cmd
    all.push cmd
  do dispatch

list.all = all

list.find =
find = (word)->
  lookup[abr.$ word]

autoupgrade = ->
  unless v = upgrade.test true
    return
  echo """

  // Update: new version v#{v} available. Upgrade with: #{PACKAGE.mingzi} upgrade
  """

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
