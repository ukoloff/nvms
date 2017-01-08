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
  mkpath @abs()
