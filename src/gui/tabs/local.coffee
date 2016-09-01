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
      local.path
      ': '
      -> a
        href: '#'
        title: "#{PACKAGE.mingzi} use #{filter}"
        'use'
      ' or '
      -> a
        href: '#'
        title: "#{PACKAGE.mingzi} remove #{filter} ."
        'remove'
  text 'Temporarily '
  a
    href: '#'
    title: "#{PACKAGE.mingzi} use none"
    'disable'
  text '...'
