###
x64 system?
https://support.microsoft.com/en-us/kb/556009
###
module.exports =
  try 0 > sh.RegRead(
    'HKLM\\HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0\\Identifier'
    ).indexOf 'x86'
