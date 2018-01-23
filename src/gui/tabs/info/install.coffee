###
Upgrade Node/LTS
###
ask = require '../../ask'
sensor = require 'self/upgrade/sensor'

module.exports = (up)->
  # Refresh upgrade info
  up = sensor.u()[up.k]

  unless up.r
    do reload
    return

  ask.x "Install #{up.N}", "upgrade #{up.k}", (is64)->
    defer ask
    remote = remotes.x up.r, is64
    echo "Install:", remote.dist, remote.$[0].join('.'), remote.x64
    remotes.i remote, (success)->
      echo "Installation #{if success then 'succeded' else 'failed'}"
      require '../local'
        .U()
      return
    require '../journal'
      .T()
    return

reload = ->
  ask.y "Information not loaded. Load", "list remote", ->
    defer ask
    echo "Load Node versions"
    fetch.versions ->
      require '.'
        .U()
