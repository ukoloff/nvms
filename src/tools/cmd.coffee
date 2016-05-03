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
    cmd.alias = a = if cmd.alias
      cmd.alias.split /\s+/
    else
      []
    lookup[cmd.name] = cmd
    names.push cmd.name
    for z in a
      lookup[z] = cmd
      names.push z
    all.push cmd
  for k, v of abbrev.apply @, names
    lookup[k] = lookup[v]
  return

nop = ->
  # Fix for minified (???)

@dispatch = ->
  unless cmd = lookup[argv[0]]
    do none
    exit 1
  do nop
  cmd.cmd.call cmd, argv.slice 1

@header =
header = ->
  echo """
#{PACKAGE.name} v#{PACKAGE.version}: #{PACKAGE.description}

"""

none = ->
  do header
  echo """
Run #{PACKAGE.name} help for instructions.
"""
