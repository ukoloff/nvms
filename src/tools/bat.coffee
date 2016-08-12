#
# Create batch file
#
module.exports =
bat = (folder)->
  mkpath path = fs.BuildPath install2, folder
  fs.CreateTextFile fs.BuildPath(path, PACKAGE.mingzi + '.bat'), true
  .WriteLine """
    @"%~dp0..\\cli.bat" %*
    """
  if fs.FileExists fs.BuildPath install2, openssl
    fs.CreateTextFile fs.BuildPath(path, 'openssl.bat'), true
    .WriteLine """
      @"%~dp0..\\#{openssl}" %*
      """

bat.openssl = openssl = 'openssl-cli.exe'
