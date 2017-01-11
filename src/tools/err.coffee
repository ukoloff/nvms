###
Global error handler
###

module.exports = (fn)->
  try
    do fn
  catch error
    throw error if DEBUG or not error.message
    echo "ERROR:", error.message
    exit()
    return
