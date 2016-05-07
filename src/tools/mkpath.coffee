module.exports = mkpath = (path)->
  q = []
  while !fs.FolderExists path
    q.push path
    path = fs.GetParentFolderName path
  fs.CreateFolder path while path = q.pop()
  path

mkpath.dst = ->
  mkpath install2
  install2
