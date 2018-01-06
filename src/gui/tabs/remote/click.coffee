###
Remotes processing
###
ask = require '../../ask'

module.exports = (i, node)->
  if i
    openssl node
  else
    install node

openssl = (node)->
  if remotes.Y()
    ask.$
      reinstall: 'nvm$ openssl .'
      cancel: 'Oops!'
      'OpenSSL installed...'
      sslX
      node
  else
    sslX 0, node
  return

# Choose platform for OpenSSL
sslX = (i, node)->
  if i
    ask.z()
    return
  ask.$ options('openssl'),
    "Install OpenSSL:"
    sslZ
    node

sslZ = (i, node)->
  ask.z()
  if i < 2
    node = remotes.x node, if i then !x64 else x64
    echo "Would install OpenSSL x#{platforms[1 - i]} from Node #{node.$[0].join '.'}"
    remotes.O node, iDone
    require '../journal'
      .$r.click()
  return

# Choose platform
install = (node)->
  ask.$ options("install #{node.dist} #{node.$[0].join '.'}"),
    "Install #{node.dist}:"
    installed
    node

installed = (i, node)->
  if i > 1
    ask.z()
    return
  node = remotes.x node, if i then !x64 else x64
  if remotes.L node
    filter = " #{node.dist} #{node.$[0].join '.'} x#{platforms[1 - i]}"
    ask.$
      use: "#{PACKAGE.mingzi} use#{filter}"
      reinstall: "#{PACKAGE.mingzi} install#{filter} ."
      cancel: "Oops!"
      'Installed...'
      reinstall
      node
  else
    reinstall 1, node
  return

reinstall = (i, node)->
  ask.z()
  switch i
    when 0
      locals.u remotes.L node
    when 1
      echo "Install:",  "#{node.dist} #{node.$[0].join '.'} x#{if node.x64 then 64 else 86}"
      require '../journal'
        .$r.click()
      remotes.i node, iDone
  return

platforms = [64, 86]
if x64
  platforms.reverse()

options = (prefix)->
  r = {}
  for p in platforms by -1
    r["x#{p}"] = "#{PACKAGE.mingzi} #{prefix} x#{p}"
  r.cancel = 'No, thanks!'
  r

iDone = (success)->
  echo "Installation", if success then "succeeded" else "failed"
  require '../local'
    .$r.click()
