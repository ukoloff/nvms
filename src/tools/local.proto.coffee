###
Methods for locally installed versions
###

exports.use = ->
  echo "Using:", @path
  junction @path

exports.full = ->
  fs.BuildPath install2, @path

exports.drop = ->
  echo "Removing:", @path
  fs.DeleteFolder @full()
  junction() if @active
