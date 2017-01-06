###
Working with Junction Point(s)
###
name = 'junction.exe'

exe = ->
  fs.BuildPath install2, name

# (re)Create Junction point and point it to folder
module.exports =
run = (folder = 'none')->
  bat folder
  wait drop() if exists()
  sh.exec """
    "#{exe()}" "#{link()}" "#{fs.BuildPath install2, folder}"
  """

wait = (child)->
  wsh.Sleep 100 until child.Status

# Remove Junction point
run.drop =
drop = ->
  sh.exec """
    "#{exe()}" -d "#{link()}"
  """

# Path to link
run.$ =
link = ->
  fs.BuildPath install2, 'this'

# Whether Junction point exists?
run._ =
exists =  ->
  fs.FolderExists link()
