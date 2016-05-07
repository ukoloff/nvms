fs = require 'fs'
path = require 'path'

for f in ['sys', 'tools']
  fs.readdirSync folder = path.join __dirname, '../src', f
  .forEach (src)->
    exports[path.parse(src).name] = path.join folder, src

return
