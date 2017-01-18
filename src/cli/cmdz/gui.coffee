exports.t = 'Open GUI'

exports.h = "Opens #{PACKAGE.mingzi} GUI using Microsoft Internet Explorer"

exports.$ = ->
  run 0, file argv0.up(), 'gui.bat'
  return
