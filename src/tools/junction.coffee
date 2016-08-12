exports.name = 
name = 'junction.exe'

exports.dst = 
dst = ->
  fs.BuildPath install2, name

exports.link = 
link = fs.BuildPath install2, 'this'

wait = (child)->
  until child.Status
    wsh.Sleep 100

exports.remove = 
remove = ->
  wait sh.exec """
    "#{dst()}" -d "#{link}"
  """
exports.exec = (folder, optional)->
  bat folder
  return if optional and fs.FolderExists link
  remove()

  sh.exec """
    "#{dst()}" "#{link}" "#{fs.BuildPath install2, folder}"
  """

# Accept EULA
exports.eula = ->
  sh.RegWrite 'HKCU\\Software\\Sysinternals\\Junction\\EulaAccepted',
    1,
    'REG_DWORD'
