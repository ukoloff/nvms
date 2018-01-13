sensor = require 'self/upgrade/sensor'

exports.t = "Upgrade latest/LTS Node or #{PACKAGE.mingzi} itself"

exports.h = """
  Download and install latest version of #{PACKAGE.mingzi}, Node or Node LTS version
  """

exports.$ = ->
  require 'self/upgrade/upgrade'

# ZOG command: Fetch latest version from GitHub
exports.z = require 'self/upgrade/sensor'
  .p

# Fetch upgrade info & rename keys
info = (empty)->
  result = {}
  for k, v of sensor.u empty
    result[if v.n then 'self' else k.toLowerCase()] = v
  result

keys = (rec)->
  for k of rec
    k

# Command arguments
exports._ = "[#{keys(info true).join '|'}] [.]"
