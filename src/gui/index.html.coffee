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
        PACKAGE.mingzi
      text " v#{PACKAGE.version}: #{PACKAGE.description}"
