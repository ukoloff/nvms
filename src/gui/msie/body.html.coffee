###
Real HTML body
###
module.exports = without ->
  div id: 'head', ->
    label -> raw '&hellip;'
    n = 0
    for k of @
      n++
      label for: ".#{n}", ->
        input
          id: ".#{n}"
          type: 'radio'
          name: '.'
          value: n
        text ' ', k.replace /./, (s)-> s.toUpperCase()
  div id: 'main', ->
    n = 0
    for k of @
      div -> h1 -> center k
