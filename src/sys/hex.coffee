###
Hexadecimal Encode/Decode
###
element = activeX "MSXML2.DOMDocument"
  .createElement 'tmp'
element.dataType = "bin.hex"

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

exports.le = (str)->
  str
  .match(/.{1,2}/g)
  .reverse()
  .join ''
