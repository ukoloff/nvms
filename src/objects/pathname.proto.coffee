###
Wrapper around WSH's fs module
###
exports.toString = ->
  @_ ? ''

# Make path absolute
exports.abs = ->
  @_ = fs.GetAbsolutePathName @
  @

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

# Shell NameSpace
exports.ns = ->
  # Requires string, not object!
  sh.app.NameSpace @_
