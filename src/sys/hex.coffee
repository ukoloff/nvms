###
Hexadecimal Encode/Decode
###
element = activeX "Msxml2.DOMDocument"
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

# Revert bytes
exports.rev =
rev = (str)->
  str
  .match(/../g)
  .reverse()
  .join ''

# Get integer
exports.i = (blob)->
  parseInt rev(hex.enc blob), 16
