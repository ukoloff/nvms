###
Wrap .js into .bat
http://www.dostips.com/forum/viewtopic.php?p=37780#p37780
###
fs = require "fs"
path = require 'path'

yaml = require 'js-yaml'

ini = require '../package'
sources = require './sources'

module.exports = ->
  apply: (compiler)->
    compiler.plugin "done", (compilation)->
      yml = readYML()
      debug = compilation.compilation.options.debug
      prolog = yml[':prolog'].replace '#{homepage}', ini.homepage

      for k, z of compilation.compilation.assets
        x = path.parse dst = z.existsAt
        continue if '.js' != x.ext
        fs.unlink dst, ->
        fs.unlink "#{dst}.map", ->
        x.base = x.name + '.bat'

        for q in dup [x.name, ':*'], debug
          if bat = yml[q]
            break

        fs.writeFile path.format(x), """
          #{prolog}#{bat.before or ''}#{sword bat.command}"%~f0"#{word bat.args}
          #{bat.after or ''}#{yml[':epilog']}#{reexport debug, z.source()}

          """, ->
      return

word = (s)->
  if s
    " #{s}"
  else
    ''

sword = (s)->
  if s
    "#{s} "
  else
    ''

readYML = ->
  yaml.safeLoad fs.readFileSync path.join sources.root, path.parse(__filename).name + '.yml'

dup = (array, debug)->
  unless debug
    return array
  res = []
  for s in array
    res.push "#{s}:debug"
    res.push s
  res

reexport = (debug, text)->
  if debug
    text
  else
    text
    .replace /[.]exports\b/g, '.X'
    .replace /exports/, 'X'       # First: module = {exports: {}, ...}
