###
Perform installation
###
module.exports = (node)->
  echo "Install:",  remotes.V node
  defer ->
    require '../journal'
      .T()
    return
  remotes.i node, (success)->
    echo "#{if success then "Installed" else "Failed to install"}:", remotes.V node
    defer ->
      # Update Locals pane
      require '../local'
        .U()
      return
  return
