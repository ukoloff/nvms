###
Fetch all remote version info
###

z =  routine()

dpath = (dist)->
  file cache, "#{dist}.json"

cached = (f)->
  f.ok 1000*60*60*24

for k of dists
  do (k)->
    z
    .s ->
      if cached f = dpath k
        false
      else
        ["#{dists[k]}index.json", f.bn()]
    .a fetch

module.exports = z.$()
