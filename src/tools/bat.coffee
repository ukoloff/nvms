###
Create batch file
###
module.exports = exports = (id)->
  id = folder install2, id
  .mk()

  file id, PACKAGE.mingzi + '.bat'
  .save """
    @"%~dp0..\\cli.bat" %*

    """

  if (openssl = file install2, OpenSSL).y()
    file id, 'openssl.bat'
    .save """
      @"%~dp0..\\#{OpenSSL}" %*

      """

    unless (bin = file id, 'openssl.exe').y()
      openssl.cp bin

  nodew id

# Name of OpenSSL binary
exports.O =
OpenSSL = 'openssl-cli.exe'
