###
Check all updates
###

sensor = require 'self/upgrade/sensor'

if sensor()
  require './zog'
    # ZOG::upgrade
    .u()

# Show upgrade info
upgrade = ''
for k, v of sensor.u() when v.a
  upgrade += "#{v.n or k}->#{v.v}; "

if upgrade
  echo """

  // Upgrade #{upgrade}See: #{PACKAGE.mingzi} upgrade
  """
