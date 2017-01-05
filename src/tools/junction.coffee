###
Working with Junction Point(s)
###
name = 'junction.exe'

dst = ->
  fs.BuildPath install2, name

exports.link =
link = fs.BuildPath install2, 'this'

wait = (child)->
  until child.Status
    wsh.Sleep 100

# Remove Junction point
exports.remove =
remove = ->
  wait sh.exec """
    "#{dst()}" -d "#{link}"
  """

# Whether Junction point exists?
exists =  ->
  fs.FolderExists link

# (re)Create Junction point and point to folder
exports.exec = (folder = 'none')->
  bat folder
  remove() if exists()
  sh.exec """
    "#{dst()}" "#{link}" "#{fs.BuildPath install2, folder}"
  """

# Accept EULA
eula =  ->
  sh.RegWrite 'HKCU\\Software\\Sysinternals\\Junction\\EulaAccepted',
    1,
    'REG_DWORD'

exports.init = ->
  return if exists()
  do eula
  do exec
