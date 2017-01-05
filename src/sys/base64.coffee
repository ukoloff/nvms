###
Base64 Encode/Decode
###
element = activeX "Msxml2.DOMDocument"
  .createElement 'tmp'
element.dataType = "bin.base64"

exports.enc = (blob)->
  try
    element.nodeTypedValue = blob
    element.text
  finally
    element.text = ''

exports.dec = (str)->
  try
    element.text = str
    element.nodeTypedValue
  finally
    element.text = ''
