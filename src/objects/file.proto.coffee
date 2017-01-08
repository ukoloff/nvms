###
File object methods
###

# Exists ?
exports.y = ->
  fs.FileExists @

# rm
exports.rm = (ensure)->
  unless ensure and not @y()
    fs.DeleteFile @

# copy
exports.cp = (to)->
  fs.CopyFile @, to

# move
exports.mv = (to)->
  fs.MoveFile @, to

# ActiveX File object
exports.$ = ->
  fs.GetFile @
