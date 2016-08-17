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
          active = !!v.active
          label class: active and 'active', ->
            input
              type: 'radio'
              name: 'tab'
              checked: active
            text ' ', k
