###
Hand-made raw loader for Webpack
###
module.exports = (content)->
  @cacheable?()

  fragments = split content, normalize parse(@query).wrap

  if fragments.length > 1
    out = "var t = #{JSON.stringify fragments.shift()}\n"
    while fragments.length > 1
      out += "t += #{JSON.stringify fragments.shift()}\n"

  "#{out or ''}module.exports = #{
      out and "t + " or ''
    }#{JSON.stringify fragments.shift() or ''}"

normalize = (wrap)->
  if wrap?
    Math.max 10, Number(wrap) or 80

# Split string at that position(s)
split =(s, at)->
  unless at
    return [s]
  len = s.length
  i = n = Math.ceil len / at
  sum = 0
  stop = 0
  while i--
    start = stop
    s.substring start, stop = Math.round (sum += len)/n

# Parse query
# From loader-utils
parse = (s)->
  unless s
    return {}
  if 'string' != typeof s
    throw SyntaxError "Query must be a string"
  s = s.replace /^[?]/, ''
  if /^[{](?:\w\W)*[}]$/.test s
    JSON.parse s
  else
    require 'querystring'
      .parse s
