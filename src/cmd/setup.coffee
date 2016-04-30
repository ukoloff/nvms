echo = require '../sys/echo'
mkpath = require '../tools/mkpath'

@name = 'setup'

@stage = 'pre'

@title = "Install #{PACKAGE.name}"

@description = """
  Installs all files to <#{require '../tools/install2'}> and fiddles PATH.
"""

@cmd = ->
  echo "Installation to", mkpath.dst()
