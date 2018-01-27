###
WScipt's console.log
###
module.exports = exports = (args...)->
  exports._ args.join ' '
  return

exports._ = (line)->
  wsh.Echo line
  return
