###
Working with Junction Point(s)
###

module.exports =
run = (folder = 'none')->
  sh.run """
    "#{bin = file install2, 'junction.exe'}" -d "#{me = link()}"
  """, 0, true
  if false == folder
    return
  bat folder
  sh.run """
    "#{bin}" "#{me}" "#{fs.BuildPath install2, folder}"
  """, 0, true

# Path to link
run.$ =
link = ->
  folder install2, 'this'
