exports.q = 'repo'

exports.t = 'Open homepage'

exports.h = "Opens #{PACKAGE.mingzi} repository in default browser."

exports.$ = ->
  run PACKAGE.homepage
  return
