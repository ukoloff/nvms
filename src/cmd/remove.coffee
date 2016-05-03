echo = require '../sys/echo'

@name = 'remove'

@alias = 'uninstall'

@stage = 'normal'

@title = 'Remove Node.js'

@args = require './install'
.args

@description = """
Remove specified Node.js version
"""

@cmd = ->
  echo "R"
