###
Methods for locally installed versions
###

exports.use = ->
  junction @path
  return

# Full path to local folder
exports._ = ->
  folder install2, @path
