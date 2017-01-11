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
  @

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

# Not expired
exports.ok = (age)->
  @y() and not @age age

# Call ActiveX method with arbitrary arguments
varargs = (name, path, args)->
  s = ""
  for a, i in args
    s += ",a[#{i}]"
  (new Function 'x,f,a', "return x.#{name}TextFile(f#{s})") fs, path, args

# fs.OpenTextFile
# args: IOMode, Create, Format
exports.open = ->
  varargs 'Open', @, arguments

# fs.CreateTextFile
# args: Overwrite, Unicode
exports.create = ->
  varargs 'Create', @, arguments

# Read file
exports.load = ->
  f = @open 1
  s = f.ReadAll()
  f.Close()
  s

# Save to file
exports.save = ->
  f = @create true
  for s in arguments
    f.Write s
  f.Close()
