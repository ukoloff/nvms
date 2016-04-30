echo = require '../sys/echo'
mkpath = require '../tools/mkpath'

@name = 'setup'

@stage = 'pre'

@title = "Install #{PACKAGE.name}"

@cmd = ->
  echo mkpath.dst()
