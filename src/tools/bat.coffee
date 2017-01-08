###
Create batch file
###
module.exports =
bat = (vfolder)->
  path = folder install2, vfolder
  .mk()

  file path, PACKAGE.mingzi + '.bat'
  .create true
  .WriteLine """
    @"%~dp0..\\cli.bat" %*
    """

  if file install2, OpenSSL
  .y()
    file path, 'openssl.bat'
    .create  true
    .WriteLine """
      @"%~dp0..\\#{OpenSSL}" %*
      """
  nodew path

# Name of OpenSSL binary
bat.O =
OpenSSL = 'openssl-cli.exe'
