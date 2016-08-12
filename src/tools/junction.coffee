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

@link =
link = fs.BuildPath install2, 'this'

wait = (child)->
  until child.Status
    wsh.Sleep 100

@exec = (folder, optional)->
  bat folder
  return if optional and fs.FolderExists link
  wait sh.exec """
    "#{dst()}" -d "#{link}"
  """
  sh.exec """
    "#{dst()}" "#{link}" "#{fs.BuildPath install2, folder}"
  """

# Accept EULA
@eula = ->
  sh.RegWrite 'HKCU\\Software\\Sysinternals\\Junction\\EulaAccepted',
    1,
    'REG_DWORD'
