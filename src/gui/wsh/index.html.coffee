###
First (minimal) HTML
###
module.exports = without ->
  (tag "!DOCTYPE", true) html: true
  html ->
    head ->
      title "#{PACKAGE.mingzi}@#{PACKAGE.version}"
      style -> raw @
      script "document.$=window"
    body -> div ->
      a
        href: PACKAGE.homepage
        target: '_blank'
        PACKAGE.mingzi
      text " session terminated"
