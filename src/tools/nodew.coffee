###
Create console-less nodew.exe
https://metacpan.org/source/SREZIC/Tk-804.032/exetype
###
module.exports = (path)->
  unless (src = file path, 'node.exe').y()
    return
  if (dst = file path, 'nodew.exe').y()
    return

  stream = binstream()
  stream.LoadFromFile src

  try check stream
  catch
    echo "Invalid executable:", src
    error = true

  unless error
    echo "Generating:", dst
    stream.Write hex.dec '02'         # CUI
    stream.SaveToFile dst

  stream.Close()

# Validate PE header
check = (stream)->

  readInt = (size)->
    hex.i stream.Read size

  assert 0x5a4d == readInt 2          # MZ
  stream.Position = 60
  pe = readInt 4
  assert pe < stream.size
  stream.Position = pe
  assert 0x4550 == readInt 4          # PE
  stream.Position = pe + 20
  assert 0xF0 == (0x10 | readInt 2)   # SizeOfOptionalHeader: 0xE0/0xF0
  readInt 2                           # Characteristics
  assert 0x30b == (0x300 | readInt 2) # Magic: 0x10B/0x20B
  stream.Position = subsys = pe + (24 + 68)
  assert 3 == readInt 2               # GUI
  stream.Position = subsys

assert = (ok)->
  unless ok
    throw Error '.'
