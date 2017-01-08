###
Wrapper around WSH's fs module
###
exports.toString = ->
  @_ ? ''

exports.abs = ->
  fs.GetAbsolutePathName @

# Initialize path by joining components
exports.j = (components)->
  for z in components
    path = if path
      fs.BuildPath path, z
    else
      z
  @_ = path
  return

# Parent folder
exports.up = ->
  folder = require './folder'
  folder fs.GetParentFolderName @

# Base name (name + ext)
exports.bn = ->
  fs.GetFileName @

# Name (without extension)
exports.n = ->
  fs.GetBaseName @

# Extension
exports.ext = ->
  fs.GetExtensionName @
