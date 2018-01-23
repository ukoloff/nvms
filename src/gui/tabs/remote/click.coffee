###
Remotes processing
###
ask = require '../../ask'

module.exports = (i, node)->
  (if i then openssl else install) node
  return

openssl = (node)->
  if remotes.Y()
    ask.y 'OpenSSL installed. Reinstall', "openssl .", ->
      sslPlatform node
      return
    return
  sslPlatform node
  return

# Choose platform for OpenSSL
sslPlatform = (node)->
  ask.x "Install OpenSSL", "openssl", (is64)->
    defer ask
    node = remotes.x node, is64
    echo "Install:", "OpenSSL"
    defer ->
      require '../journal'
        .T()
      return
    remotes.O node, (success)->
      echo if success then "OpenSSL installed" else "Failed to install OpenSSL"
      return
  return

vid = (remote)->
  "#{
    remote.dist} #{
    remote.$[0].join '.'}#{
    if remote.x64? then " x#{
      if remote.x64 then 64 else 86
    }" else ""
    }"

# Choose platform for Node to install
install = (node)->
  ask.x "Install #{vid node}", "install #{vid node}", (is64)->
    if remotes.L node = remotes.x node, is64
      ask
        use: "#{PACKAGE.mingzi} use #{vid node}"
        reinstall: "#{PACKAGE.mingzi} install #{vid node} ."
        cancel: "Never mind"
        'Installed:'
        reinstall
        node
    else
      reinstall 1, node
    return

reinstall = (i, node)->
  defer ask
  switch i
    when 0
      locals.u remotes.L node
    when 1
      echo "Install:",  "#{vid node}"
      defer ->
        require '../journal'
          .T()
        return
      remotes.i node, (success)->
        echo "#{if success then "Installed" else "Failed to install"}: #{vid node}"
        defer ->
          # Update Locals pane
          require '../local'
            .U()
          return
  return
