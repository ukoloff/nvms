#
# Generate distribution and commit it to repository
#
fs = require "fs"
path = require 'path'
PACKAGE = require '../../package'
mkdirp = require 'mkdirp'
  .sync
rm = require './rm'
git = require './git'
cp = require './cp'

# Create distro folder
repo = 'tmp/dist'
mkdirp "#{repo}/#{n}" for n in ['dist', 'sis']

# Copy files
cp = cp repo
cp 'README.md'
cp 'sis/junction.exe'
cp "tmp/#{mingzi = PACKAGE.mingzi}.bat", 'dist'

# Create setup.bat
fs.writeFileSync path.join(repo, 'setup.bat'),
  """@"%~dp0dist/#{mingzi}.bat" : setup"""

# Git operations
commit = git.current()
rm "#{repo}/.git"
git = git repo
git "init"
git "remote", 'add', 'origin', '../..'
git "checkout", '-b', 'dist'
git "add", ".", '--force'
git 'commit', '-m', commit
git 'tag', '-f', "v#{PACKAGE.version}"
git 'push', '--tags', '--force', 'origin', 'dist'
