###
Add folder content to source

Source must contain multiline (triple #) comment only
###
fs = require "fs"
path = require "path"

module.exports = (src)->
  unless only3 src
    return src
  src += """

  ### glob(*) below:
  ###
  module.exports =

  """

  self = path.basename @resourcePath
  for f in fs.readdirSync @context when f != self
    f = path.parse f
    src += "#{f.name}: require './#{f.name}'\n"
  src

only3 = (src)->
  lines = src
  .replace /^\s+|\s+$/g, ''
  .split /\r\n?|\n/
  unless /^#{3}/.test x=lines.shift()
    console.log "Not started", x
    return
  return '###' == lines.pop()
