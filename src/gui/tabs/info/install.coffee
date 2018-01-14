###
Upgrade Node/LTS
###
ask = require '../../ask'

module.exports = (up)->
  unless up.r
    do reload
    return
  ask.x "Install #{up.N}", "upgrade #{up.k}", (is64)->
    defer ask
    remote = remotes.x up.r, is64
    echo "Install:", remote.dist, remote.$[0].join('.'), remote.x64

reload = ->
  ask.y "Information not loaded. Load", "list remote", ->
    defer ask
    echo "Load Node versions"
    fetch.versions ->
      require '.'
        .$r.click()
