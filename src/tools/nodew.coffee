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
    hex.i stream.Read size

  stream = binstream()
  stream.LoadFromFile src
  assert 0x5a4d == readInt 2        # MZ
  stream.Position = 60
  pe = readInt 4
  assert pe < stream.size
  stream.Position = pe
  assert 0x4550 == readInt 4        # PE
  stream.Position = pe + 20
  assert 0xF0 == 0x80 | readInt 2   # SizeOfOptionalHeader 0xE0/0xF0
  readInt 2                         # Characteristics
  assert 0x30b == 0x30 | readInt 2  # Magic 0x10B/0x20B
  stream.Position = subsys = pe + (24 + 68)
  assert 3 == readInt 2             # GUI
  stream.Position = subsys
  stream.Write hex.dec '02'         # CUI
  stream.SaveToFile dst, 2
  stream.Close()
