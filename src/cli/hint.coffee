###
Check all updates
###

sensor = require 'self/upgrade/sensor'

if sensor()
  zog 'upgrade'

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
