#
# List installed versions
#

@list = ->
  list = []
  x = rndFile()
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
      active: fs.FileExists fs.BuildPath f.Path, x.r if x
  fs.DeleteFile x.p if x
  list.sort semver.cmpi

rndFile = ->
  return unless fs.FolderExists junction.link
  i = 16
  while --i
    if fs.FileExists p = fs.BuildPath junction.link, r = rnd 15
      continue
    try
      fs.CreateTextFile p, true
      .Close()
      return {p, r}
    catch
      return
