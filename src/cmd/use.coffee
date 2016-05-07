@name = 'use'

@stage = 'normal'

@title = 'Use installed before Node.js version'

@args = require './install'
.args

@description = """
Activate specified Node.js version
"""

@cmd = ->
  echo "U"
