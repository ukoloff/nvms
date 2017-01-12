###
WScript's process.exit
###
module.exports = (code = 0)->
  wsh.Quit code
  return
