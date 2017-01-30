###
HTTP Get & store
###
module.exports = (url, dst)->
  echo "Fetching:", url
  ajax url, dst
  return
