###
Fetch all remote version info
###

(module.exports = (self =  routine()).$())
.x = ext = '.json'

for k of dists
  do (k)->
    self
    .s ->
      if file(cache, f = k + ext).ok 1000*60*60*24
        false
      else
        ["#{dists[k]}index#{ext}", f]
    .a fetch
