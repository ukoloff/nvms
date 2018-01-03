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

  npx = file id, 'npx.cmd'
  unless npx.y()
    echo "Creating:", npx.bn 2
    npx.save """
      @"%~dp0..\\npx.bat" %*

    """

  if (openssl = file install2, OpenSSL).y() and
    not (bin = file id, "openssl#{nodew.x}").y()
      openssl.cp bin

  nodew id

# Name of OpenSSL binary
exports.O =
OpenSSL = "openssl-cli#{nodew.x}"
