###
Locals tab template
###
module.exports = without ->
  n = 0
  for z in @ by -1
    div class: n++ & 1 && 'odd' or 'even', ->
      input
        type: 'radio'
        disabled: true
        checked: z.active
      text ' ', z.path
