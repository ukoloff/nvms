###
Link to shortcuts
###
module.exports = exports = ['Desktop', 'StartMenu', 'AppData']

for f, i in exports by -1
  exports[i] = sh.SpecialFolders f

if (f = folder exports.pop(), 'Microsoft/Internet Explorer/Quick Launch').y()
  exports.push f

for f, i in exports by -1
  exports[i] = file f, "#{PACKAGE.mingzi}.lnk"
