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
      span class: 'ask', ->
        filter = " #{z.dist} #{z.$[0].join '.'} x#{if z.x64 then 64 else 86}"
        a
          href: '#'
          title: "#{PACKAGE.mingzi} use#{filter}"
          'use'
        text ' or '
        a
          href: '#'
          title: "#{PACKAGE.mingzi} remove#{filter}"
          'remove'
