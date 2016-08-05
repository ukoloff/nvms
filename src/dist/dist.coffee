#
# Generate distribution and commit it to repository
#
fs = require 'fs'
mkdir = require './mkdir'
rm = require './rm'
git = require './git'

mkdir root = 'tmp/dist'
mkdir "#{root}/#{n}" for n in ['dist', 'sis']
rm "#{root}/.git"

git "init", root
