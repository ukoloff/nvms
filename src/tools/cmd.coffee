abbrev = require 'abbrev'
echo = require '../sys/echo'

@list = (options, commands...)->
  stage = options.stage
  for cmd in commands when cmd.name and (!cmd.stage? or cmd.stage==stage)
    echo "Created command:", cmd.name
  return
