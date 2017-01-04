###
Global error handler
###

module.exports = (fn)->
  try
    do fn
  catch error
    throw error if DEBUG
    echo "ERROR:", error.message
    exit 1
