###
Info tab
###
t = require './index.html'

exports.c = 1   # Clear on leave

exports.a = (pane)->
  pane.innerHTML = t
    l: list = locals()
    $: junction.$
    d: dists
    sh: sh
    n: activeX "WScript.Network"
    x64: x64

  require '../local'
    .i list
