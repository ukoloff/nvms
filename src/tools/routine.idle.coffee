###
Fire callbacks
###

routine._ = []

module.exports = ->
  was = routine._
  routine._ = will = []
  for callback in was when not callback()
    will.push callback
  return
