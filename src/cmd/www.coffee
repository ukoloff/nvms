sh = require '../sys/sh'

@name = 'www'

@alias = 'repo'

@title = 'Open homepage'

@description = "Opens #{PACKAGE.name} repository in default browser."

@cmd = ->
  sh.run PACKAGE.homepage
