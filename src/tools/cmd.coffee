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

dispatch = ->
  unless cmd = find argv[0]
    do none
    exit 1
  cmd.cmd.call cmd, argv.slice 1

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
