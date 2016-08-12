#
# Loader for .cmd sources
#
fs = require "fs"
path = require "path"

module.exports = (src)->
  @cacheable()
  for f in fs.readdirSync @context
    src += "  require './#{path.parse(f).name}'\n"
  src
