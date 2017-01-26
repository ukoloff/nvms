###
Generate distro
###
fs = require 'fs'
path = require 'path'

yazl = require 'yazl'
mkdirp = require 'mkdirp'
  .sync

PACKAGE = require '../../package'

console.log "Creating sfx at", dst = path.resolve 'tmp/sfx'
mkdirp dst

zip = new yazl.ZipFile
zip.outputStream.pipe fs.createWriteStream path.join dst, "#{PACKAGE.mingzi}.zip"

zipTree = (zip, from)->
  do folder = (relative = '')->
    fs.readdirSync path.join from, relative
    .forEach (file)->
      full = path.join from, short = path.join relative, file
      if fs.statSync(full).isDirectory()
        folder short
        return
      zip.addFile full, short
  zip.end()

zipTree zip, require './repo'
