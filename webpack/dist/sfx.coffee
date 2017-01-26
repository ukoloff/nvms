###
Generate distro
###
path = require 'path'
mkdirp = require 'mkdirp'
  .sync

console.log "Creating sfx at", dst = path.resolve 'tmp/sfx'
mkdirp dst
