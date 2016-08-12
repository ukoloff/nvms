#
# Wrap .js into .bat
# http://www.dostips.com/forum/viewtopic.php?p=37780#p37780
#
fs = require "fs"
path = require 'path'

module.exports =
me = (options)->

me::apply = (compiler)->
  compiler.plugin "done", (compilation)->
    for k, z of compilation.compilation.assets
      dst = z.existsAt
      continue unless /[.]js$/.test dst
      fs.unlink dst, ->
      dst = dst.replace /[.].*?$/, '.bat'
      pause = if /setup/.test k
        """
        pause
        
        """
      else
        ''
      fs.writeFile dst, """
0</*! ::
@echo off
cscript //nologo //e:javascript "%~f0" %*
#{pause}goto :EOF */0;
#{do z.source}

      """
    return
