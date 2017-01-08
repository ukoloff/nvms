exports.title = 'Show help for all or individual commands'

exports.args = '[command]'

exports.help = """
  Shows information on individual commands or #{PACKAGE.mingzi} itself.
  """

exports.cmd = (args)->
  do cmd.header
  if x = cmd.find args[0]
    command x, args.slice 1
  else
    do general

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
