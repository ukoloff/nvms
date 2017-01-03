###
Base64 Encode/Decode
###
element = ->
  z = activeX "MSXML2.DOMDocument"
    .createElement 'tmp'
  z.dataType = "bin.base64"
  z

exports.enc = (blob)->
  z = element()
  z.nodeTypedValue = blob
  z.text

exports.dec = (str)->
  z = element()
  z.text = str
  z.nodeTypedValue
