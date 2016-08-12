#
# Loader for .cmd sources
#
fs = require "fs"
path = require "path"

module.exports = (src)->
  @cacheable()
  self = path.basename @resourcePath
  for f in fs.readdirSync @context when f != self
    f = path.parse f
    src += "  #{f.name}: require './#{f.name}'\n"
  src
