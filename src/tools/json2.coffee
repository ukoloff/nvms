###
JSON parser
https://github.com/douglascrockford/JSON-js
###

rx_one   = /^[\],:{}\s]*$/
rx_two   = /\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g
rx_three = /"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g
rx_four  = /(?:^|:|,)(?:\s*\[)+/g

module.exports = (text)->
  unless rx_one.test(text
      .replace rx_two, "@"
      .replace rx_three, "]"
      .replace rx_four, "")
    throw SyntaxError "Invalid JSON"
  do new Function "return (#{text})"
