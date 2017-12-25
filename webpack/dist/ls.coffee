###
Find Node.js version to pack into SFX
###
spawn = require 'child_process'
  .spawnSync

args = process.argv.slice 3

result = []

for s in spawn 'tmp\\cli.bat', ['ls'].concat args
.stdout
.toString()
.split /\r\n?|\n/
  break unless /^(\W)\s+(\S+)/.test s
  if !args.length and '>' == RegExp.$1
    result = [RegExp.$2]
    break
  result.push RegExp.$2

if !args.length
  result = result.slice -1

module.exports = result
