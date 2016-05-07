fs = require "fs"
path = require "path"

module.exports = me = (options)->

hdr = """
#
# Autogenerated commands list
#
cmd.list
  stage: stage

"""

me::apply = (compiler)->
  compiler.plugin "compilation", (compilation)->
    dst = path.join __dirname, '../src/cmd'
    idx = hdr + fs.readdirSync dst
      .map (n)->
        "  require './#{path.parse(n).name}'\n"
      .join ""
    dst = path.join dst, "index.coffee"
    if idx!=fs.readFileSync dst, 'utf8'
      fs.writeFile dst, idx, 'utf8'
