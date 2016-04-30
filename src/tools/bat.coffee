fs = require '../sys/fs'
install2 = require './install2'
mkpath = require './mkpath'

# Create batch file
module.exports = (folder)->
  mkpath path = fs.BuildPath install2, folder
  path = fs.BuildPath path, PACKAGE.name + '.bat'
  fs.CreateTextFile path, true
  .WriteLine "@cscript //NoLogo \"%~dp0..\\#{PACKAGE.name}.js\" %*"
