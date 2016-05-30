Servers = ["Msxml2.XMLHTTP", "Microsoft.XMLHTTP"]

module.exports =
ajax = ->
  for x in Servers
    try return new ActiveXObject x
  throw Error 'AJAX not supported!'

ajax.get = (url, asBody)->
  z = do ajax
  z.open 'GET', url, false
  z.send null
  if 200 != z.status
    throw Error "HTTP error #{z.status}: #{z.statusText}"
  if asBody
    z.responseBody
  else
    z.responseText

ajax.dl = (url, path)->
  data = ajax.get url, true
  stream = new ActiveXObject "adodb.stream"
  stream.Type = 1           # adTypeBinary
  stream.Open()
  stream.Write data
  stream.SaveToFile path, 2 # adSaveCreateOverWrite
  stream.Close()
