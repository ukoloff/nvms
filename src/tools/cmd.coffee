#
# Commands engine
#
@all =
all = []
abr = new abbrev
lookup = {}

@list = (options, commands...)->
  stage = options.stage
  for cmd in commands when cmd.name and (!cmd.stage or cmd.stage==stage)
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
