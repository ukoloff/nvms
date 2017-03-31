###
Working with Junction Point(s)
###

module.exports = exports = (id = 'none')->
  unless (bin = file install2, 'linkd.exe').y()
    throw Error "File not found: #{bin}"
  run 0, true, bin, link, '/D'
  if false == id
    return
  bat id
  run 0, true, bin, link, folder install2, id
  return

# Path to link
exports.$ =
link =
  folder install2, 'this'
