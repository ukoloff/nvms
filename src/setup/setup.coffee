###
Perform installation
###

echo "Installing #{PACKAGE.mingzi} v#{PACKAGE.version} to <#{install2}>..."

mkpath install2
echo "Copying files..."
src = fs.GetParentFolderName wsh.ScriptFullName
fs.CopyFolder fs.BuildPath(src, 'bin'), install2
rm = 'README.md'
fs.CopyFile fs.BuildPath(src, rm), fs.BuildPath(install2, rm)
echo "Creating shortcuts..."
junction.init()
echo "Updating PATH..."
addpath true
echo """
Installation complete.
Open new console and run '#{PACKAGE.mingzi} help' to start.
"""
