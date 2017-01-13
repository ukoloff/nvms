###
Debug print
###
module.exports = (r)->
  s = ''
  for k, v of r
    s += "\n#{k} = #{v}"
  s
