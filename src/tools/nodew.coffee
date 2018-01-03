###
Create console-less nodew.exe
https://metacpan.org/source/SREZIC/Tk-804.032/exetype
###
ok = ->
  true

module.exports = (path)->
  unless (src = file path, 'node.exe').y()
    return
  if (dst = file path, 'nodew.exe').y()
    return

  stream = binstream()
  stream.LoadFromFile src

  readInt = (size)->
    hex.i stream.Read size

  seek = (position)->
    stream.Position = position
    true

  if  0x5a4d == readInt(2)          and # MZ
      seek(60)                      and
      (pe = readInt 4)              and
      pe < stream.size              and
      seek(pe)                      and
      0x4550 == readInt(4)          and # PE
      seek(pe + 20)                 and
      0xF0 == (0x10 | readInt 2)    and # SizeOfOptionalHeader: 0xE0/0xF0
      ok(readInt 2)                 and # Characteristics
      0x30b == (0x300 | readInt 2)  and # Magic: 0x10B/0x20B
      seek(flag = pe + (24 + 68))   and
      3 == readInt(2)               and # CUI
      seek(flag)
    echo "Generating:", dst.bn 2
    stream.Write hex.dec '02'           # GUI
    stream.SaveToFile dst
  else
    echo "Invalid EXE:", src

  stream.Close()
