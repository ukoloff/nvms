@name =
name = 'junction.exe'

@path =
path = ->
  fs.BuildPath fs.GetParentFolderName(wsh.ScriptFullName),
    name

path.exists = ->
  fs.FileExists do path

@src =
src = ->
  fs.BuildPath fs.GetParentFolderName(wsh.ScriptFullName),
    fs.BuildPath '../sis', name

@dst =
dst = ->
  fs.BuildPath install2, name

src.exists = ->
  fs.FileExists do src

@exec = (folder, optional)->
  j = fs.BuildPath install2, 'current'
  return if optional and fs.FolderExists j
  sh.exec """
"#{dst()}" "#{j}" "#{fs.BuildPath install2, folder}"
  """
