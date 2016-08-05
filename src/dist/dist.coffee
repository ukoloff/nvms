#
# Generate distribution and commit it to repository
#
fs = require "fs"
path = require 'path'
mingzi = require '../../package'
  .mingzi
mkdir = require './mkdir'
rm = require './rm'
git = require './git'
cp = require './cp'

# Create distro folder
mkdir root = 'tmp/dist'
mkdir "#{root}/#{n}" for n in ['dist', 'sis']

# Copy files
cp = cp root
cp 'README.md'
cp 'sis/junction.exe'
cp "tmp/#{mingzi}.bat", 'dist'

# Create setup.bat
fs.writeFileSync path.join(root, 'setup.bat'),
  """@"%~dp0dist/#{mingzi}.bat" : setup"""

# Git operations
rm "#{root}/.git"
git = git root
git "init"
git "remote", 'add', 'origin', '../..'
git "add", "."
