###
HTTP request
###
Servers = """
  Msxml2.ServerXMLHTTP
  Msxml2.XMLHTTP
  Microsoft.XMLHTTP
  """.split /\s+/

xhr = ->
  for x in Servers
    try return activeX x
  throw Error 'AJAX not supported!'

# Perform GET request
module.exports = (url, saveAs)->
  z = do xhr
  z.open 'GET', url, false
  z.send null
  if 200 != z.status
    throw Error "HTTP error #{z.status}: #{z.statusText}"

  return z.responseText unless saveAs

  stream = binstream()
  stream.Write z.responseBody
  stream.SaveToFile saveAs, 2   # adSaveCreateOverWrite
  stream.Close()
  return
