###
Generate distribution and commit it to repository
###
fs = require "fs"
path = require 'path'
PACKAGE = require '../../package'
mkdirp = require 'mkdirp'
  .sync
rm = require './rm'
cp = require './cp'

console.log "Creating distro at", path.resolve repo = 'tmp/dist'
rm repo
mkdirp bin = path.join repo, 'bin'

# Copy files
cp = cp bin
cp 'README.md'
cp 'bin/linkd.exe'
cp "tmp/cli.bat"
cp "tmp/gui.bat"
cp "tmp/upgrade.bat"
cp "./tmp/setup.bat"

unless process.argv[2]
  process.exit 0

# Git operations
git = require './git'

commit = git.current()
rm "#{repo}/.git"
git = git repo
git "init"
git "remote", 'add', 'origin', '../..'
git "checkout", '-b', 'release'
git "add", ".", '--force'
git 'commit', '-m', commit
git 'tag', '-f', vX = "v#{PACKAGE.version}"
git 'push', '--tags', '--force', 'origin'
git 'fetch'
git 'checkout', '-f', 'dist'
git 'merge', '-X', 'theirs', vX, '-m', vX
git 'push'
