###
Test for Admin rights
###
reg = GetObject "winmgmts://./root/default:StdRegProv"
params = reg.Methods_ "EnumKey"
  .InParameters.SpawnInstance_()
params.hDefKey = 0x80000003     # HKEY_USERS
params.sSubKeyName = "S-1-5-20"

module.exports = !reg.ExecMethod_ "EnumKey", params
    .ReturnValue
