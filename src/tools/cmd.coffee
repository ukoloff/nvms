#
# Commands engine
#
@all =
all = []
abr = new abbrev
lookup = {}

@list = (commands)->
  for name, cmd of commands when cmd.cmd
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

@find =
find = (word)->
  lookup[abr.is word]

@dispatch =
dispatch = ->
  unless cmd = find argv[0]
    do none
    exit 1
  cmd.cmd.call cmd, argv.slice 1

@header =
header = ->
  echo """
    #{PACKAGE.mingzi} v#{PACKAGE.version}: #{PACKAGE.description}

    """

none = ->
  do header
  echo """
    Run #{PACKAGE.mingzi} help for instructions.
    """
