###
Folder object methods
###

# Exists ?
exports.y = ->
  fs.FolderExists @

# rmdir
exports.rm = (ensure)->
  unless ensure and not @y()
    fs.DeleteFolder @
  @

# copy
exports.cp = (to)->
  fs.CopyFolder @, to
  return

# move
exports.mv = (to)->
  fs.MoveFolder @, to
  return

# mkdir -p with optional cleaning
exports.mk = (clean)->
  @rm clean if clean
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

children = (list, map)->
  res = []
  each list, (child)->
    res.push map child
  res

exports.files = ->
  children @$().Files, require './file'

exports.folders = ->
  children @$().SubFolders, require './folder'
