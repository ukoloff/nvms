#
# Base64 Encode/Decode
#
element = ->
  z = new ActiveXObject "MSXML2.DOMDocument"
    .createElement 'tmp'
  z.dataType = "bin.base64"
  z

@enc = (blob)->
  z = element()
  z.nodeTypedValue = blob
  z.text

@dec = (str)->
  z = element()
  z.text = str
  z.nodeTypedValue
