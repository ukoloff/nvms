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
link = fs.BuildPath install2, 'current'

@exec = (folder, optional)->
  return if optional and fs.FolderExists link
  sh.exec """
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
