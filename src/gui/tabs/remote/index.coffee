###
Remotes tab
###
exports.a = (pane)->
  exports.a = 0
  # Load remotes list without fetch (previously loaded)
  exports.r = rs = remotes true
  echo dump5 rs
  pane.innerHTML = 'Node.js versions available to install'
