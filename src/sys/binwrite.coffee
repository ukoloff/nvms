#
# Save BLOB to file
#
module.exports = (file, blob)->
  stream = new ActiveXObject "ADODB.Stream"
  stream.Type = 1	 # adTypeBinary
  stream.Open()
  stream.Write blob
  stream.SaveToFile t = file, 2 # adSaveCreateOverWrite
  stream.Close()
