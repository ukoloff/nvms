###
Global error handler
###

module.exports = (fn)->
  try
    do fn
    return
  catch error
    throw error if DEBUG or not error.message
    (require 'self/tools/echo') "ERROR:", error.message
    return
