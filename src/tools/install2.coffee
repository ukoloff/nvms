fs = require '../sys/fs'
sh = require '../sys/sh'

module.exports = fs.BuildPath sh.SpecialFolders('AppData'), fs.GetBaseName(WScript.ScriptName)
