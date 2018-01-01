###
Fetch all remote version info
###

module.exports = (self =  routine()).$()

for k of dists
  do (k)->
    self
    .s ->
      if file(cache, f = "#{k}.json").ok 1000*60*60*24
        false
      else
        ["#{dists[k]}index.json", f]
    .a fetch
