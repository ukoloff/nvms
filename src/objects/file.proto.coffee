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

# mtime or older than...
exports.age = (age)->
  mtime = @$().DateLastModified
  if age?
    new Date - mtime > age
  else
    mtime

# fs.OpenTextFile
# args: IOMode, Create, Format
exports.open = (args...)->
  args.unshift @
  fs.OpenTextFile.apply fs, args

# fs.CreateTextFile
# args: Overwrite, Unicode
exports.open = (args...)->
  args.unshift @
  fs.CreateTextFile.apply fs, args
