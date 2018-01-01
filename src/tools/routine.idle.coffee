###
Fire callbacks
###

routine._ = []

module.exports = ->
  routine._ = for callback in routine._ when not callback()
    callback
  return
