echo = require '../sys/echo'

@name = 'version'

@title = 'Show version'

@description = "Displays #{PACKAGE.name} version."

@cmd = ->
  echo PACKAGE.version
