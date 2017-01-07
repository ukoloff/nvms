###
Generate distribution and commit it to repository
###
fs = require "fs"
path = require 'path'
PACKAGE = require '../../package'
mkdirp = require 'mkdirp'
  .sync
rm = require './rm'
git = require './git'
cp = require './cp'

mkdirp bin = path.join repo = 'tmp/dist', 'bin'

# Copy files
cp = cp bin
cp 'README.md'
cp 'sis/junction.exe'
cp "tmp/cli.bat"
cp "tmp/upgrade.bat"
cp "./tmp/setup.bat"

# Git operations
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
git 'checkout', '-f', 'dist2'
git 'merge', '-X', 'theirs', vX, '-m', vX
git 'push'
