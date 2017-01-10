###
Loader for YAML sources
###
yaml = require 'js-yaml'

module.exports = (src)->
  @cacheable()
  """
  module.exports =
  #{JSON.stringify yaml.safeLoad src}
  """
