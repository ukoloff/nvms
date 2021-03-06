###
Generate distro
###
path = require 'path'

mkdirp = require 'mkdirp'
  .sync

rm = require './rm'
cp = require './cp'

console.log "Creating distro at", path.resolve repo = require './repo'
rm repo
mkdirp bin = path.join repo, 'bin'

# Copy files
cp = cp bin
cp 'README.md'
cp 'bin/linkd.exe'
cp "tmp/cli.bat"
cp "tmp/gui.bat"
cp "tmp/npx.bat"
cp "tmp/upgrade.bat"
cp "./tmp/setup.bat"

if process.argv[2] in['tag', 'sfx']
  require "./#{process.argv[2]}"
