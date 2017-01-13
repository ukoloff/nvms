###
WScipt's console.log
###
module.exports = (args...)->
  wsh.Echo args.join ' '
  return
