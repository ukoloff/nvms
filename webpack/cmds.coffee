#
# Loader for .cmd sources
#
fs = require "fs"
path = require "path"

module.exports = (src)->
  @cacheable()
  for f in fs.readdirSync @context
    f = path.parse f
    if '.cmds' != f.ext
      src += "  #{f.name}: require './#{f.name}'\n"
  src
