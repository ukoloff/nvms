###
rm -rf
###
fs = require 'fs'
path = require 'path'

module.exports = rm = (folder)->
  try
    list = fs.readdirSync folder
  catch
    return
  for f in list
    f = path.join folder, f
    if fs.lstatSync(f).isDirectory()
      rm f
    else
      fs.unlinkSync f
  fs.rmdirSync folder
