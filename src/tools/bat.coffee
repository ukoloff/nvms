###
Create batch file
###
module.exports =
bat = (vfolder)->
  path = folder install2, vfolder
  .mk()

  file path, PACKAGE.mingzi + '.bat'
  .save """
    @"%~dp0..\\cli.bat" %*

    """

  if file install2, OpenSSL
  .y()
    file path, 'openssl.bat'
    .save """
      @"%~dp0..\\#{OpenSSL}" %*

      """
  nodew path

# Name of OpenSSL binary
bat.O =
OpenSSL = 'openssl-cli.exe'
