###
Test for Admin rights
###
# const HKEY_CLASSES_ROOT = &H80000000
# const HKEY_CURRENT_USER = &H80000001
# const HKEY_LOCAL_MACHINE = &H80000002
# const HKEY_USERS = &H80000003
# const HKEY_CURRENT_CONFIG = &H80000005
#
# SID: S-1-5-18
# Name: Local System
# Description: A service account that is used by the operating system.
# SID: S-1-5-19
# Name: NT Authority
# Description: Local Service
# SID: S-1-5-20
# Name: NT Authority
# Description: Network Service
module.exports = !GetObject "winmgmts://./root/default:StdRegProv"
  .EnumKey 1 << 31 | 3, "S-1-5-20"
