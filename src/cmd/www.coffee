@name = 'www'

@alias = 'repo'

@title = 'Open homepage'

@description = "Opens #{PACKAGE.mingzi} repository in default browser."

@cmd = ->
  sh.run PACKAGE.homepage
