#
# List installed versions
#

@list = ->
  list = []
  folders = fs.GetFolder install2
    .SubFolders
  each folders, (f)->
    unless /^(\w+)-\D*(\d+(?:[.]\d+)*)-x(\d+)/.test f.Name
      return
    list.push
      id: [
        (Number z for z in RegExp.$2.split '.'),
        [
          dist = RegExp.$1,
          x64 = /^6/.test RegExp.$3]]
      dist: dist
      x64: x64
      path: f.Name
  list.sort semver.cmpi
