#
# Local admin?
#
module.exports =
  try
    sh.RegRead 'HKEY_USERS\\S-1-5-20\\'
    true
