exports.alias = 'repo'

exports.title = 'Open homepage'

exports.help = "Opens #{PACKAGE.mingzi} repository in default browser."

exports.$ = ->
  sh.run PACKAGE.homepage
