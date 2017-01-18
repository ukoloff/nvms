###
Inject some [pseudo-]local variables
###
fs = require 'fs'
path = require 'path'
ini = require '../package'

@root =
root = path.join __dirname, '../src'

@entry =
entry   = {}

@globals =
globals = {}

for f of ini.devDependencies when /^[$\w]+$/.test f
  globals[f] = f

for libname in fs.readdirSync root
  continue unless fs.statSync lib = path.join root, libname
    .isDirectory()
  z = {}
  for file in fs.readdirSync lib
    if 'index' == name = path.parse(file).name
      entry[libname] = "self/#{libname}"
      z = {}
      break
    z[name] = "self/#{libname}/#{file}"
  for k, v of z
    globals["#{libname}.#{k}"] =
    globals[k] = v
