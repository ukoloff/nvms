###
Perform installation
###
module.exports = (node)->
  require '../journal'
    .T()
  echo "Install:",  remotes.V node
  remotes.i node, (success)->
    echo "#{if success then "Installed" else "Failed to install"}:", remotes.V node
    defer ->
      # Update Locals pane
      require '../local'
        .U()
      return
  return
