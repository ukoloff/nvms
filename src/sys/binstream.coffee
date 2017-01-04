###
Stream for BLOBs
###
module.exports = (file, blob)->
  stream = activeX "ADODB.Stream"
  stream.Type = 1	 # adTypeBinary
  stream.Open()
  stream
