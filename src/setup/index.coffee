#
# Perform installation
#

echo "Installing #{PACKAGE.mingzi} v#{PACKAGE.version} to <#{install2}>..."

mkpath install2
echo "Copying files..."
fs.CopyFolder fs.BuildPath(fs.GetParentFolderName(wsh.ScriptFullName), 'bin'),
  install2
echo "Creating shortcuts..."
junction.eula()
junction.exec 'none', true
echo "Updating PATH..."
path.install()
echo """
Installation complete.
Open new console and run '#{PACKAGE.mingzi} help' to start.
"""
