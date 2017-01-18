exports.q = '?'
exports.t = 'Show help for all or individual command(s)'

exports._ = '[command]'

exports.h = """
  Shows information on individual commands or #{PACKAGE.mingzi} itself.
  """

exports.$ = (args)->
  header()
  cmdz = require '.'
  unless args[0]
    general cmdz
    return
  if cmd = exports.A.$ args[0]
    command cmd, cmdz[cmd], args.slice 1
    return
  require './abbrev'
    .$ args
  return

command = (name, cmd, args)->
  echo "#{PACKAGE.mingzi} #{name}: #{cmd.t}"
  echo "\nAlias: #{cmd.q.join ', '}" if cmd.q.length
  echo """

    Usage: #{PACKAGE.mingzi} #{name} #{cmd._ or ''}

    """
  if 'function' == typeof cmd.h
    cmd.h args
  else if cmd.h
    echo cmd.h
  return

general = (commands)->
  echo """
    Usage: #{PACKAGE.mingzi} <command> [parameter(s)]

    Commands:
    """
  for k, v of commands
    echo "\t#{k}\t#{v.t}"
  echo """

    Command names may be unambiguously abbreviated (See: #{PACKAGE.mingzi} a).

    Run #{PACKAGE.mingzi} ? <command> for more instructions.
    """
  return

header = ->
  echo """
    #{PACKAGE.mingzi} v#{PACKAGE.version}: #{PACKAGE.description}

    """
  return

exports.i = ->
  do header
  echo """
    Run #{PACKAGE.mingzi} ? for instructions.
    """
  return
