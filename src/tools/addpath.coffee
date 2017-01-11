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
  bin = "#{junction.$()}"
  x = for x in orig.split ';' when x != bin
    x
  x.unshift bin if add
  x = x.join ';'
  if x != orig
    assign env, key, x
