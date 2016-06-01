@name = 'version'

@title = 'Show version'

@help = "Displays #{PACKAGE.mingzi} version."

@cmd = ->
  echo PACKAGE.version
