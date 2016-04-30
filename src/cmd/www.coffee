sh = require '../sys/sh'

@name = 'www'

@title = 'Open homepage'

@description = "Opens default browser onto #{PACKAGE.name} repository."

@cmd = ->
  sh.run PACKAGE.homepage
