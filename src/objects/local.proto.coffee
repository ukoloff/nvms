###
Methods for locally installed versions
###

exports.use = ->
  echo "Using:", @path
  junction @path
  return

# Full path to local folder
exports._ = ->
  folder install2, @path
