Servers = ["Msxml2.XMLHTTP", "Microsoft.XMLHTTP"]

module.exports = ->
  for x in Servers
    try
      return new ActiveXObject x
    catch
  throw Error 'AJAX not supported!'
