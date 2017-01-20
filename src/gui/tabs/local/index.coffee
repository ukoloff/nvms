###
Locals tab
###
t = require './html'

tHint = without ->
  span
    class: 'hint'
    @

exports.c = 1

exports.a = ->
  exports.$d.innerHTML = t list = locals()
  exports.$i.innerHTML = tHint list.length
