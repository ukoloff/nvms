abbrev = require 'abbrev'
echo = require '../sys/echo'
exit = require '../sys/exit'
argv = require '../sys/argv'

@lookup =
lookup = {}

@list = (options, commands...)->
  stage = options.stage
  names = []
  for cmd in commands when cmd.name and (!cmd.stage or cmd.stage==stage)
    lookup[cmd.name] = cmd
    names.push cmd.name
  for k, v of abbrev.apply @, names
    lookup[k] = lookup[v]
  return

@dispatch = ->
  unless cmd = lookup[argv[0]]
    do info
    exit 1
  cmd.cmd.call cmd, argv.slice 1

info = ->
  echo """
#{PACKAGE.name} v#{PACKAGE.version}: #{PACKAGE.description}

Run #{PACKAGE.name} help for instructions.
"""
