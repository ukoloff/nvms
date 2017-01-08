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
  f = @abs()
  until f.y()
    q.push f
    f = f.up()
  while f = q.pop()
    fs.CreateFolder f
  @
