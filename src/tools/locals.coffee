###
List installed versions
###

module.exports = ->
  list = []
  x = rndFile()
  each fs.GetFolder(install2).SubFolders, (f)->
    unless /^(\w+)-\D*(\d+(?:[.]\d+)*)-x(\d+)/.test f.Name
      return
    list.push new Local if x then fs.FileExists fs.BuildPath f.Path, x.r
  fs.DeleteFile x.p if x
  list.sort semver.cmpi

rndFile = ->
  return unless fs.FolderExists junction.link()
  i = 16
  while --i
    if fs.FileExists p = fs.BuildPath junction.link(), r = rnd 15
      continue
    try
      fs.CreateTextFile p, true
      .Close()
      return {p, r}
    catch
      return

# Most data passed via RegExp
Local = (active)->
  @path = RegExp.$_
  @dist = dist = RegExp.$1
  semver = for n in RegExp.$2.split '.'
    Number n
  @x64 = x64 = /^6/.test RegExp.$3
  @$ = [semver, [dist, x64]]
  @active = active

Local:: = local.proto
