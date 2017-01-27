###
Generate distro
###
fs = require 'fs'
path = require 'path'

yazl = require 'yazl'
mkdirp = require 'mkdirp'
  .sync

PACKAGE = require '../../package'
rm = require './rm'

console.log "Creating sfx at", dst = path.resolve 'tmp/sfx'
rm dst
mkdirp dst

nodes = require './ls'

zipTree = (name, from)->
  console.log "Packing:", name += '.zip'
  zip = new yazl.ZipFile
  zip.outputStream
  .pipe fs.createWriteStream path.join dst, name
  .on 'error', (e)->
    throw e
  .on 'close', ->
    do zipNext
  do folder = (relative = '')->
    fs.readdirSync path.join from, relative
    .forEach (file)->
      full = path.join from, short = path.join relative, file
      if fs.statSync(full).isDirectory()
        folder short
        return
      zip.addFile full, short
  zip.end()

zipTree PACKAGE.mingzi, require './repo'

zipNext = ->
  unless local = nodes.pop()
    do zipped
    return
  zipTree local, path.join process.env.APPDATA, PACKAGE.mingzi, local


# Everything is zipped
zipped = ->
  console.log "Ok"
