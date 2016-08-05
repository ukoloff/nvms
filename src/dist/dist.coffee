#
# Generate distribution and commit it to repository
#
mingzi = require '../../package'
  .mingzi
mkdir = require './mkdir'
rm = require './rm'
git = require './git'
cp = require './cp'

mkdir root = 'tmp/dist'
mkdir "#{root}/#{n}" for n in ['dist', 'sis']
rm "#{root}/.git"

cp 'README.md', root
cp 'sis/junction.exe', root
cp "tmp/#{mingzi}.bat", root, 'dist'

git "init", root
