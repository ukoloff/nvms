module.exports = without ->
  table ->
    for k, v of @
      tr class: 'zebra', ->
        td k
        td v
  span ->
    text 'Temporarily '
    a
      href: '#'
      title: "#{PACKAGE.mingzi} use none"
      'disable'
    text ' or completely '
    a
      href: '#'
      title: "#{PACKAGE.mingzi} bye ."
      'uninstall'
    text '...'
