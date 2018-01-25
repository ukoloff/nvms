###
Updating user PATH variable
###
module.exports = (add)->
  env = sh.Environment 'User'
  orig = env key = 'Path'
  tail = junction.$.bn 2
    .replace /^\W+/, ''
  # Check if path component (not) created by nvm$
  other = (s)->
    s.slice(-tail.length) != tail or
    /\w$/.test s.slice 0, -tail.length
  x = for x in orig.split ';' when other x
    x
  if add
    x.unshift junction.$
  x = x.join ';'
  if x != orig
    ###
    MS specific syntax to assign OLE properties
    Rejected by:
      - CoffeeScript
      - Webpack
      # UglifyJS (Allowed!)
    ###
    (Function 'o,k,v', 'o(k)=v') env, key, x
  return
