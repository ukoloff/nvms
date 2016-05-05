abbrev = require 'abbrev'
echo = require '../sys/echo'
exit = require '../sys/exit'
argv = require './argv'

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
    for z in a.concat cmd.name
      lookup[z] = cmd
      names.push z
    all.push cmd
  for k, v of abbrev.apply @, names
    lookup[k] = lookup[v]
  do dispatch

nop = ->
  # Fix for minified (???)

@dispatch =
dispatch = ->
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
