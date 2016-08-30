#
# Patch webpack's UglifyJS plugin
#

ujs = require 'webpack/lib/optimize/UglifyJsPlugin'

module.exports =
me = ->

me::apply = (compiler)->
  compiler.options.plugins.forEach (plugin)->
    return unless plugin instanceof ujs
    plugin.options.output =
      max_line_len: 128
