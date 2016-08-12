#
# Simple file copy
#
fs = require 'fs'
path = require 'path'

module.exports = (bin)-> (file)->
  root = if subfolder file
    bin
  else
    path.dirname bin
  root = path.join root, path.basename file
  fs.writeFileSync root, fs.readFileSync file

subfolder = (path)->
  return unless /// / ///.test path
  not /^[.]/.test path
