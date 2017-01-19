###
Real HTML body
###
module.exports = without ->
  div id: 'head', ->
    label -> raw '&hellip;'
    n = 0
    for k of @
      n++
      label class: 1 == n and 'active', ->
        input
          id: ".#{n}"
          type: 'radio'
          name: '.'
          value: n
          checked: 1 == n
        text ' ', k.replace /./, (s)-> s.toUpperCase()
  div id: 'main', ->
    n = 0
    for k of @
      div
        class: n++ and 'hide'
        -> center k
