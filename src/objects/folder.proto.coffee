###
Folder object methods
###

# Exists ?
exports.y = ->
  fs.FolderExists @

# rmdir
exports.rm = ->
  fs.DeleteFolder @

# copy
exports.cp = (to)->
  fs.CopyFolder @, to

# move
exports.mv = (to)->
  fs.MoveFolder @, to

# mkdir -p
exports.mk = ->
  q = []
  _ = @_
  try
    f = @abs()
    until f.y()
      q.push f
      f = f.up()
    while f = q.pop()
      fs.CreateFolder f
    @
  finally
    @_ = _

# ActiveX Folder object
exports.$ = ->
  fs.GetFolder @

exports.files = ->
  file = require './file'
  res = []
  each @$().Files, (f)->
    res.push file f.Path
  res

exports.folders = ->
  folder = require './folder'
  res = []
  each @$().SubFolders, (f)->
    res.push folder f.Path
  res
