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

# Call ActiveX method with arbitrary arguments
varargs = (name, path, args)->
  s = ""
  for a, i in args
    s += ",a[#{i}]"
  (new Function 'x,f,a', "return x.#{name}(f#{s})") fs, path, args


# fs.OpenTextFile
# args: IOMode, Create, Format
exports.open = ->
  varargs 'OpenTextFile', @, arguments

# fs.CreateTextFile
# args: Overwrite, Unicode
exports.create = ->
  varargs 'CreateTextFile', @, arguments
