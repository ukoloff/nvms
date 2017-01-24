###
Wrapper around WSH's fso module
###
exports.toString = ->
  @_ ? ''

# Make path absolute
exports.abs = ->
  @_ = fso.GetAbsolutePathName @
  @

# Parent folder
exports.up = ->
  folder = require './folder'
  folder fso.GetParentFolderName @

# Base name (name + ext)
exports.bn = ->
  fso.GetFileName @

# Name (without extension)
exports.n = ->
  fso.GetBaseName @

# Extension
exports.ext = ->
  fso.GetExtensionName @

# Shell NameSpace
exports.ns = ->
  # Requires string, not object!
  sh.app.NameSpace @_
