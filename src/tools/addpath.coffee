###
Updating user PATH variable
###
key = 'Path'
env = sh.Environment 'User'

###
MS specific syntax to assign OLE properties
Rejected by:
  - CoffeeScript
  - Webpack
  # UglifyJS (Allowed!)
###
assign = new Function 'o,k,v', 'o(k)=v'

module.exports = (add)->
  orig = env key
  tail = junction.$.bn 2
  other = (s)->
    s.slice(-tail.length) != tail or /\w$/.test s.slice 0, -tail.length
  x = for x in orig.split ';' when other x
    x
  x.unshift junction.$ if add
  x = x.join ';'
  if x != orig
    assign env, key, x
