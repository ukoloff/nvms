#
# Patch webpack's UglifyJS plugin
#

ujs = require 'webpack/lib/optimize/UglifyJsPlugin'

module.exports =
me = (options)->
  @options = options
  return

me::apply = (compiler)->
  options = @options
  compiler.options.plugins.forEach (plugin)->
    return unless plugin instanceof ujs
    merge plugin.options, options

merge = (base, patch)->
  for k, v of patch
    if 'object' == typeof v
      merge base[k] ||= {}, v
    else
      base[k] = v
  return
