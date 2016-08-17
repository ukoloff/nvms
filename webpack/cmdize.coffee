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
      bat = RegExp.leftContext + '.bat'
      fs.unlink dst, ->
      bin = if not compilation.compilation.options.debug and /gui/.test dst
        'start wscript'
      else
        'cscript //nologo'
      pause = if /setup/.test k
        """
        pause

        """
      else
        ''
      fs.writeFile bat, """
0</*! ::
@echo off
#{bin} //e:javascript "%~f0" %*
#{pause}goto :EOF */0;
#{do z.source}

      """
    return
