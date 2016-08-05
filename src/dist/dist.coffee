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

cp = cp root
cp 'README.md'
cp 'sis/junction.exe'
cp "tmp/#{mingzi}.bat", 'dist'

git "init", root
