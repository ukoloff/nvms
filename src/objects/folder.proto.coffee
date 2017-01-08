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

# map = false: return ActiveX objects
# map = string: return paths
children = (list, map)->
  res = each list
  if false == map
    return res
  if 'string' == typeof map
    map = (x)->Path
  for z, i in res by -1
    res[i] = map z
  res

exports.files = (map)->
  children @$().Files, map ? require './file'

exports.folders = (map)->
  children @$().SubFolders, map ? require './folder'
