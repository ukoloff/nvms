###
Real HTML body
###
module.exports = without ->
  keys = (r)->
    k for k of r

  div id: 'head', ->
    label ->
      raw '&hellip;'
      div class: 'hide', ->
        for k in keys @ by -1
          a href: "#", k.replace /./, (s)-> s.toUpperCase()
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
        notag ' ', span
    return
  div id: 'main', ->
    n = 0
    for k of @
      div()
    return
