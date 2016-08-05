#
# Hand written mkdirp
#
fs = require 'fs'

module.exports = (folder)->
  try
    fs.statSync folder
    true
  catch
    fs.mkdirSync folder
