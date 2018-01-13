###
Working with Junction Point(s)
###

module.exports = exports = (id = 'none')->
  spawn()
  if false == id
    return
  bat id
  spawn folder install2, id
  return

# Path to link
exports.$ =
link =
  folder install2, 'this'

nonASCII = /[^\x00-\x7F]/.test link

fixPath = (f)->
  if nonASCII
    file '..', f.bn()
  else
    f

# Run linkd
spawn = (dst)->
  unless (bin = file install2, 'linkd.exe').y()
    throw Error "File not found: #{bin}"
  if nonASCII
    sh.CurrentDirectory = cache
  run 0, true,
    fixPath bin
    fixPath link
    if dst then fixPath dst else '/D'
  return
