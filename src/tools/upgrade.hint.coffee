###
Check all updates
###

module.exports = ->
  x = {}
  if v = upgrade.test()
    x.upgrade = "New version v#{v}"
  if v = remotes.$()
    x.install = "Node.js version v#{v}"

  for k, v of x
    unless updates
      echo()
      updates = true
    echo "// Update: #{v} available. Upgrade with: #{PACKAGE.mingzi} #{k}"
  return
