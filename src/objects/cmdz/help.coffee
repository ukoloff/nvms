exports.title = 'Show help for all or individual command(s)'

exports.args = '[command]'

exports.help = """
  Shows information on individual commands or #{PACKAGE.mingzi} itself.
  """

exports.$ = (args)->
  do header
  unless args[0]
    do general
  else if x = cmd.find args[0]
    command x, args.slice 1
  else
    require './abbrev'
    .$ args

command = (cmd, args)->
  echo "#{PACKAGE.mingzi} #{cmd.name}: #{cmd.title}"
  echo "\nAlias: #{cmd.alias.join ', '}" if cmd.alias.length
  echo """

    Usage: #{PACKAGE.mingzi} #{cmd.name} #{cmd.args or ''}

    """
  if 'function' == typeof cmd.help
    cmd.help args
  else if cmd.help
    echo cmd.help

general = ->
  echo """
    Usage: #{PACKAGE.mingzi} <command> [parameter(s)]

    Commands:
    """
  for x in cmd.all
    echo "\t#{x.name}\t#{x.title}"
  echo """

    Command names may be unambiguously abbreviated (See: #{PACKAGE.mingzi} a).

    Run #{PACKAGE.mingzi} help <command> for more instructions.
    """

header = ->
  echo """
    #{PACKAGE.mingzi} v#{PACKAGE.version}: #{PACKAGE.description}

    """

exports.i = ->
  do header
  echo """
    Run #{PACKAGE.mingzi} help for instructions.
    """
