@name = 'help'

@title = 'Show help for all or individual commands'

@args = '[command]'

@description = """
Shows information on individual commands or #{PACKAGE.mingzi} itself.
"""

@cmd = (args)->
  do cmd.header
  if x = cmd.find args[0]
    command x
  else
    do general

command = (cmd)->
  echo "#{PACKAGE.mingzi} #{cmd.name}: #{cmd.title}"
  echo "\nAlias: #{cmd.alias.join ', '}" if cmd.alias.length
  echo """

Usage: #{PACKAGE.mingzi} #{cmd.name} #{cmd.args or ''}

#{cmd.description or ''}
"""

general = ->
  echo """
Usage: #{PACKAGE.mingzi} [:] <command> [parameter(s)]

Commands:
"""
  for x in cmd.all
    echo "\t#{x.name}\t#{x.title}"
  echo """

Start with colon (:) to force pause after script end.

Command names may be unambiguously abbreviated.

Run #{PACKAGE.mingzi} help <command> for more instructions.
"""
