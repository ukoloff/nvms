#
# Shell shortcuts for gui
#

module.exports = for f in ['Desktop', 'StartMenu']
  fs.BuildPath sh.SpecialFolders(f), PACKAGE.mingzi + ".lnk"
