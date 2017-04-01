###
Remotes processing
###
ask = require '../../ask'

module.exports = (i, node)->
  v = node.$[0].join '.'
  echo "REMOTE #{v}[#{i}]"
  ask.$ options(if i then 'openssl' else "install #{v}"),
    "Install #{if i then 'OpenSSL' else node.dist}:"
    next
    node

options = (prefix)->
  platforms = [64, 86]
  if x64
    platforms.reverse()
  r = {}
  for p in platforms by -1
    r["x#{p}"] = "#{PACKAGE.mingzi} #{prefix} x#{p}"
  r.cancel = 'No, thanks!'
  r

# Next click
next = (i, node)->
  echo "R2 #{node.$[0].join '.'}[#{i}]"
  if 2==i
    ask.z()
