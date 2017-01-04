###
Create console-less nodew.exe
https://metacpan.org/source/SREZIC/Tk-804.032/exetype
###
module.exports = (path)->
  unless fs.FileExists src = fs.BuildPath path, 'node.exe'
    return
  if fs.FileExists dst = fs.BuildPath path, 'nodew.exe'
    return

  echo "Generating", dst

  assert = (ok)->
    throw SyntaxError "Invalid executable: #{src}" unless ok

  readInt = (size)->
    size = hex.le hex.enc stream.Read size
    parseInt size, 16

  stream = binstream()
  stream.LoadFromFile src
  assert 0x5a4d == readInt 2
  stream.Position = 60
  pe = readInt 4
  assert pe < stream.size
  stream.Position = pe
  assert 0x4550 == readInt 4
  stream.Position = pe + 20
  assert 224 == readInt 2
  stream.Position = flag = pe + (24 + 68)
  assert 3 == readInt 2
  stream.Position = flag
  stream.Write hex.dec '02'
  stream.SaveToFile dst, 2
  stream.Close()
