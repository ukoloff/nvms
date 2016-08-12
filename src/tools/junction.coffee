@name =
name = 'junction.exe'

@src =
src = ->
  fs.BuildPath fs.GetParentFolderName(wsh.ScriptFullName),
    fs.BuildPath '../sis', name

@dst =
dst = ->
  fs.BuildPath install2, name

@link =
link = fs.BuildPath install2, 'this'

wait = (child)->
  until child.Status
    wsh.Sleep 100

@remove =
remove = ->
  wait sh.exec """
    "#{dst()}" -d "#{link}"
  """
@exec = (folder, optional)->
  bat folder
  return if optional and fs.FolderExists link
  remove()

  sh.exec """
    "#{dst()}" "#{link}" "#{fs.BuildPath install2, folder}"
  """

# Accept EULA
@eula = ->
  sh.RegWrite 'HKCU\\Software\\Sysinternals\\Junction\\EulaAccepted',
    1,
    'REG_DWORD'
