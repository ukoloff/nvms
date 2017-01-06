###
Methods for locally installed versions
###

exports.use = ->
  echo "Using:", @path
  junction @path

# Full path to local folder
exports._ = ->
  fs.BuildPath install2, @path

exports.drop = ->
  echo "Removing:", @path
  junction() if @active
  zog 'bye', @path
