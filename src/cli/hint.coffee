###
Check all updates
###

sensor = require 'self/upgrade/sensor'

# Run background update if neccessary
sensor ->

# Show upgrade info
upgrade = ''
for k, v of sensor.u() when v.a
  upgrade += "#{v.N} -> #{v.v}; "

if upgrade
  echo """

  // Upgrade #{upgrade}See: #{PACKAGE.mingzi} upgrade
  """
