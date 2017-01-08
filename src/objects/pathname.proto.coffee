###
Wrapper around WSH's fs module
###
exports.toString = ->
  @_ ? ''

folder = ->
  require './folder'

exports.abs = ->
  folder() fs.GetAbsolutePathName @

# Initialize path by joining components
exports.j = (components)->
  for z in components
    path = if path
      fs.BuildPath path, z
    else
      z
  @_ = path.toString()
  return

# Parent folder
exports.up = ->
  folder() fs.GetParentFolderName @

# Base name (name + ext)
exports.bn = ->
  fs.GetFileName @

# Name (without extension)
exports.n = ->
  fs.GetBaseName @

# Extension
exports.ext = ->
  fs.GetExtensionName @
