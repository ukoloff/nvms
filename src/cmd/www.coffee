@alias = 'repo'

@title = 'Open homepage'

@help = "Opens #{PACKAGE.mingzi} repository in default browser."

@cmd = ->
  sh.run PACKAGE.homepage
