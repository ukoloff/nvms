abbrev = require 'abbrev'
echo = require '../sys/echo'
exit = require '../sys/exit'
argv = require '../sys/argv'

@all =
all = []

@lookup =
lookup = {}

@list = (options, commands...)->
  stage = options.stage
  names = []
  for cmd in commands when cmd.name and (!cmd.stage or cmd.stage==stage)
    lookup[cmd.name] = cmd
    names.push cmd.name
    all.push cmd
  for k, v of abbrev.apply @, names
    lookup[k] = lookup[v]
  return

@dispatch = ->
  unless cmd = lookup[argv[0]]
    do none
    exit 1
  cmd.cmd.call cmd, argv.slice 1

@none =
none = ->
  echo """
#{PACKAGE.name} v#{PACKAGE.version}: #{PACKAGE.description}

Run #{PACKAGE.name} help for instructions.

"""
