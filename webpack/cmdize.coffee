#
# Wrap .js into .bat
# http://www.dostips.com/forum/viewtopic.php?p=37780#p37780
#
fs = require "fs"

module.exports =
me = (options)->

me::apply = (compiler)->
  compiler.plugin "done", (compilation)->
    for k, z of compilation.compilation.assets
      dst = z.existsAt
      continue unless /[.]js$/.test dst
      fs.unlink dst
      dst = dst.replace /[.].*?$/, '.bat'
      fs.writeFile dst, """
0</*! ::
@echo off
cscript //nologo //e:javascript "%~f0" %*
goto :EOF */0;
#{do z.source}

      """
    return
