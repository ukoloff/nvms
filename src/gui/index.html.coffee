#
# Start page
#
module.exports = without ->
  html ->
    head ->
      title PACKAGE.mingzi
      style @c
    body ->
      a
        href: PACKAGE.homepage
        target: '_blank'
        PACKAGE.mingzi
      text " v#{PACKAGE.version}: #{PACKAGE.description}"
      div class: 'tabs', ->
        for k, v of @t
          label ->
            input
              type: 'radio'
              name: 'tab'
              value: k
              checked: v.active
            text ' ', k.replace /./, (s)->s.toUpperCase()
      div class: 'panes', ->
        for k, v of @t
          div
            id: k
            class: 'hide'
            "= #{k} ="
