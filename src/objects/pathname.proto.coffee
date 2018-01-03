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
exports.bn = (count)->
  tail = fso.GetFileName @
  while --count > 0
    p = do require './pathname' unless p    
    tail = "#{p (z = (z or @).up()).bn(), tail}"
  tail 

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
