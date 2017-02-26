###
Link to shortcuts
###
module.exports = for f in ['Desktop', 'StartMenu']
  file sh.SpecialFolders(f), "#{PACKAGE.mingzi}.lnk"
