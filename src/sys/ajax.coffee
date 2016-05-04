Servers = ["Msxml2.XMLHTTP", "Microsoft.XMLHTTP"]

module.exports =
ajax = ->
  for x in Servers
    try
      return new ActiveXObject x
    catch
  throw Error 'AJAX not supported!'

ajax.get = (url)->
  z = do ajax
  z.open 'GET', url, false
  z.send null
  if 200 != z.status
    throw Error "HTTP error #{z.status}: #{z.statusText}"
  z.responseText

ajax.dl = (url, path)->
  data = get url
  stream = new ActiveXObject "adodb.stream"
  stream.Type = 1           # adTypeBinary
  stream.Open()
  stream.Write data
  stream.SaveToFile path, 2 # adSaveCreateOverWrite
  stream.Close()
