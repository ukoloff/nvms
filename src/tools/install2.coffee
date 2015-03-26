fs = require '../sys/fs'
sh = require '../sys/sh'
name = require './name'

module.exports = fs.BuildPath sh.SpecialFolders('AppData'), name
