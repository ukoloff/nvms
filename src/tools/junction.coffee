fs = require '../sys/fs'
install2 = require './install2'

@name =
name = 'junction.exe'

@path =
path = ->
  fs.BuildPath fs.GetParentFolderName(WScript.ScriptFullName),
    name

path.exists = ->
  fs.FileExists do path

@src =
src = ->
  fs.BuildPath fs.GetParentFolderName(WScript.ScriptFullName),
    fs.BuildPath '../sis', name

@dst =
dst = ->
  fs.BuildPath install2, name

src.exists = ->
  fs.FileExists do src
