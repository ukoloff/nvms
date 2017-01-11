###
Perform installation
###
echo "Installing #{PACKAGE.mingzi} v#{PACKAGE.version} to <#{install2}>..."

echo "Copying files..."
src = argv0.up()

folder src, 'bin'
.cp install2

file src, rm = 'README.md'
.cp file install2, rm

echo "Creating shortcuts..."
junction.init()

echo "Updating PATH..."
addpath true
echo """
Installation complete.
Open new console and run '#{PACKAGE.mingzi} help' to start.
"""
