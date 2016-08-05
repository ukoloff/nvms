#
# Generate distribution and commit it to repository
#
fs = require 'fs'
mkdir = require './mkdir'

mkdir root = 'tmp/dist'
mkdir "#{root}/#{n}" for n in ['dist', 'sis']
