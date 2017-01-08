exports.t = 'Show help for all or individual command(s)'

exports._ = '[command]'

exports.h = """
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
  echo "#{PACKAGE.mingzi} #{cmd.n}: #{cmd.t}"
  echo "\nAlias: #{cmd.q.join ', '}" if cmd.q.length
  echo """

    Usage: #{PACKAGE.mingzi} #{cmd.n} #{cmd._ or ''}

    """
  if 'function' == typeof cmd.h
    cmd.h args
  else if cmd.h
    echo cmd.h

general = ->
  echo """
    Usage: #{PACKAGE.mingzi} <command> [parameter(s)]

    Commands:
    """
  for x in cmd.all
    echo "\t#{x.n}\t#{x.t}"
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
