###
Test for Admin rights
###
module.exports = !GetObject "winmgmts://./root/default:StdRegProv"
  .EnumKey 0x80000003, "S-1-5-20"
