fs = require 'fs'
path = require 'path'
ini = require '../package'

for f of ini.devDependencies
  exports[f] = f

for f in ['sys', 'tools']
  fs.readdirSync folder = path.join __dirname, '../src', f
  .forEach (src)->
    exports[path.parse(src).name] = path.join folder, src

return
