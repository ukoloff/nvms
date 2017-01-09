###
Create batch file
###
module.exports =
bat = (id)->
  id = folder install2, id
  .mk()

  file id, PACKAGE.mingzi + '.bat'
  .save """
    @"%~dp0..\\cli.bat" %*

    """

  if file install2, OpenSSL
  .y()
    file id, 'openssl.bat'
    .save """
      @"%~dp0..\\#{OpenSSL}" %*

      """
  nodew id

# Name of OpenSSL binary
bat.O =
OpenSSL = 'openssl-cli.exe'
