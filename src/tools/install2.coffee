fs = require '../sys/fs'
sh = require '../sys/sh'

module.exports =
dst = fs.BuildPath sh.SpecialFolders('AppData'), PACKAGE.name
