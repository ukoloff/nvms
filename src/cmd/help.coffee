cmd = require '../tools/cmd'
echo = require '../sys/echo'

@name = 'help'

@title = 'Show help for all or individual commands'

@cmd = (args)->
  echo """
Usage: #{PACKAGE.name} command [parameter(s)]

Commands:
"""
  for x in cmd.all
    echo "\t#{x.name}\t#{x.title}"

  echo """

Run #{PACKAGE.name} help command for more instructions.
"""
