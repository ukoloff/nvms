#
# Simple file copy
#
fs = require 'fs'
path = require 'path'

module.exports = (root)-> (file, folder)->
  if folder
    folder = path.join root, folder, path.basename file
  else
    folder = path.join root, file
  fs.createReadStream file
  .pipe fs.createWriteStream folder
