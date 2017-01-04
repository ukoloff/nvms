###
Create console-less nodew.exe
https://metacpan.org/source/SREZIC/Tk-804.032/exetype
###
module.exports = (path)->
  unless fs.FileExists src = fs.BuildPath path, 'node.exe'
    return
  if fs.FileExists dst = fs.BuildPath path, 'nodew.exe'
    return

  stream = binstream()
  stream.LoadFromFile src

  if check stream
    echo "Generating", dst
    stream.Write hex.dec '02'         # CUI
    stream.SaveToFile dst
  else
    echo "Invalid executable:", src

  stream.Close()

# Validate PE header
check = (stream)->

  readInt = (size)->
    hex.i stream.Read size

  if 0x5a4d != readInt 2          # MZ
    return
  stream.Position = 60
  pe = readInt 4
  if pe >= stream.size
    return
  stream.Position = pe
  if 0x4550 != readInt 4          # PE
    return
  stream.Position = pe + 20
  if 0xF0 != (0x10 | readInt 2)   # SizeOfOptionalHeader: 0xE0/0xF0
    return
  readInt 2                       # Characteristics
  if 0x30b != (0x300 | readInt 2) # Magic: 0x10B/0x20B
    return
  stream.Position = subsys = pe + (24 + 68)
  if 3 != readInt 2               # GUI
    return
  stream.Position = subsys
