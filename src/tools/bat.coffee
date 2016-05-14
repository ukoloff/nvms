#
# Create batch file
#
module.exports = (folder)->
  mkpath path = fs.BuildPath install2, folder
  path = fs.BuildPath path, PACKAGE.mingzi + '.bat'
  fs.CreateTextFile path, true
  .WriteLine "@\"%~dp0..\\#{PACKAGE.mingzi}.bat\" %*"
