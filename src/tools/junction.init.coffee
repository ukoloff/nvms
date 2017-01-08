###
Create Junction point for the 1st time (unless exists)
###
module.exports = ->
  return if junction.y()
  do eula
  do junction

# Accept EULA
eula =  ->
  sh.RegWrite 'HKCU\\Software\\Sysinternals\\Junction\\EulaAccepted',
    1,
    'REG_DWORD'
