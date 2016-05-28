#
# List installed versions
#

@list = ->
  folders = fs.GetFolder install2
    .SubFolders
  each folders, (f)->
    echo f
