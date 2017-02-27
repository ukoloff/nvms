###
Invoke Shell verb on shortcut
###
module.exports = (pif, verb)->
  if pif.y()
    try
      pif.abs().up().ns().ParseName pif.bn()
        .InvokeVerb verb
  return
