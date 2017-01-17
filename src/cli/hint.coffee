###
Check all updates
###

sensor = require 'self/upgrade/sensor'

if sensor()
  require './zog'
    # ZOG::upgrade
    .u()

x = {}
if v = sensor.v()
  x.upgrade = "New version v#{v}"
if v = remotes.v()
  x.install = "Node.js version v#{v}"

for k, v of x
  unless updates
    echo()
    updates = true
  echo "// Update: #{v} available. Upgrade with: #{PACKAGE.mingzi} #{k}"
