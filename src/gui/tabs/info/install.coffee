###
Upgrade Node/LTS
###
ask = require '../../ask'
sensor = require 'self/upgrade/sensor'
install = require '../remote/install'

module.exports = (up)->
  # Refresh upgrade info
  up = sensor.u()[up.k]

  unless up.r
    do reload
    return

  ask.x "Install #{up.N}", "upgrade #{up.k}", (is64)->
    install remotes.x up.r, is64
    return

reload = ->
  ask.y "Information not loaded. Load", "list remote", ->
    defer ask
    echo "Load Node versions"
    fetch.versions ->
      require '.'
        .U()
    return
  return
