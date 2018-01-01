###
HTTP Get & store
###

module.exports =
routine()
.s (url, dst)->
  echo "Fetching:", url
  return
.a (url, dst)->
  ajax url, file cache, dst
  return
.$()
