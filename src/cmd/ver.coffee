@name = 'version'

@title = 'Show version'

@description = "Displays #{PACKAGE.mingzi} version."

@cmd = ->
  echo PACKAGE.version
