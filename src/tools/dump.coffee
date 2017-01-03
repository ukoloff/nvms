###
Debug print
###
module.exports =
dump = (r)->
  s = ''
  for k, v of r
    s += "\n#{k} = #{v}"
  s
