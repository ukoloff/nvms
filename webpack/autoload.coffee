###
Inject some [pseudo-]local variables
###
fs = require 'fs'
path = require 'path'
ini = require '../package'

for f of ini.devDependencies when /^[$\w]+$/.test f
  exports[f] = f

for lib in fs.readdirSync src = path.join __dirname, '../src'
  continue unless fs.statSync lib = path.join src, lib
    .isDirectory()
  z = {}
  for file in fs.readdirSync lib
    if 'index' == name = path.parse(file).name
      z = {}
      break
    z[name] = path.join lib, file
  for k, v of z
    exports[k] = v
