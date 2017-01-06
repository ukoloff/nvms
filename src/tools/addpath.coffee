###
Updating user PATH variable
###
key = 'Path'
env = sh.Environment 'User'

get = ->
  env key
  .split ';'

###
MS specific syntax to assign OLE properties
Rejected by:
  - CoffeeScript
  - Webpack
  # UglifyJS (Allowed!)
###
assign = new Function 'o,k,v', 'o(k)=v'

module.exports = (add)->
  bin = junction.$()
  x = for x in get() when x != bin
    x
  x.unshift bin if add
  assign env, key, x.join ';'
