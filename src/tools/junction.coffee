###
Working with Junction Point(s)
###
name = 'junction.exe'

exe = ->
  file install2, name

# (re)Create Junction point and point it to folder
module.exports =
run = (folder = 'none')->
  bat folder
  drop() if exists()
  sh.run """
    "#{exe()}" "#{link()}" "#{fs.BuildPath install2, folder}"
  """, 0, true

# Remove Junction point
run.drop =
drop = ->
  sh.run """
    "#{exe()}" -d "#{link()}"
  """, 0, true

# Path to link
run.$ =
link = ->
  folder install2, 'this'

# Whether Junction point exists?
run.y =
exists =  ->
  link().y()
