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

# split by 2 chars
chunk = (str)->
  i = 0
  while i < str.length
    j = i
    str.substring j, i += 2

# Revert bytes
revert = (str)->
  chunk str
  .reverse()
  .join ''

# Get integer
exports.i = (blob)->
  parseInt revert(hex.enc blob), 16
