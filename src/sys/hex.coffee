###
Hexadecimal Encode/Decode
###
element = activeX "Msxml2.DOMDocument"
  .createElement 'tmp'
element.dataType = "bin.hex"

exports.enc = (blob)->
  element.nodeTypedValue = blob
  res = element.text
  element.text = ''
  res

exports.dec = (str)->
  element.text = str
  res = element.nodeTypedValue
  element.text = ''
  res

# Revert bytes
revert = (str)->
  str
  .match(/../g)
  .reverse()
  .join ''

# Get integer
exports.i = (blob)->
  parseInt revert(hex.enc blob), 16
