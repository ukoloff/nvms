exports.active = true

exports.show = (pane)->
  pane.innerHTML = t locals()

t = without ->
  for local in @ by -1
    filter = local.path.split '-'
    filter[1] = filter[1].replace /^\D+/, ''
    filter = filter.join ' '
    div
      class: 'zebra'
      -> input
        type: 'radio'
        name: 'local'
        checked: local.active
        disabled: true
      ' '
      local.path
      ': ', -> span ->
        a
          href: '#'
          title: "#{PACKAGE.mingzi} use #{filter}"
          'use'
        text ' or '
        a
          href: '#'
          title: "#{PACKAGE.mingzi} remove #{filter} ."
          'remove'
