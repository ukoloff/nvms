#
# Generate distribution and commit it to repository
#
fs = require "fs"
path = require 'path'
mingzi = require '../../package'
  .mingzi
mkdirp = require 'mkdirp'
  .sync
rm = require './rm'
git = require './git'
cp = require './cp'

# Create distro folder
root = 'tmp/dist'
mkdirp "#{root}/#{n}" for n in ['dist', 'sis']

# Copy files
cp = cp root
cp 'README.md'
cp 'sis/junction.exe'
cp "tmp/#{mingzi}.bat", 'dist'

# Create setup.bat
fs.writeFileSync path.join(root, 'setup.bat'),
  """@"%~dp0dist/#{mingzi}.bat" : setup"""

# Git operations
commit = git.current()
rm "#{root}/.git"
git = git root
git "init"
git "remote", 'add', 'origin', '../..'
git "checkout", '-b', 'dist'
git "push", 'origin', ':dist'	# Remove remote branch
git "add", ".", '--force'
git 'commit', '-m', commit
git 'push', 'origin', 'dist'
