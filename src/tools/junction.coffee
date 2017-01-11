###
Working with Junction Point(s)
###

module.exports =
junction = (id = 'none')->
  run 0, true, (bin = file install2, 'linkd.exe'), link, '/D'
  if false == id
    return
  bat id
  run 0, true, bin, link, folder install2, id
  return

# Path to link
junction.$ =
link =
  folder install2, 'this'
