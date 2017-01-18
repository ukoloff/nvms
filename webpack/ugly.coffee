###
Patch webpack's UglifyJS plugin
###

ujs = require 'webpack/lib/optimize/UglifyJsPlugin'

module.exports = (options)->
  apply: (compiler)->
    compiler.options.plugins.forEach (plugin)->
      if plugin instanceof ujs
        merge plugin.options, options

merge = (base, patch)->
  for k, v of patch
    if 'object' == typeof v
      merge base[k] ||= {}, v
    else
      base[k] = v
  return
