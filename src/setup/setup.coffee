###
Perform installation
###
echo "Installing #{PACKAGE.mingzi} v#{PACKAGE.version} to:", install2

echo "Copying files..."
src = argv0.up()

folder src, 'bin'
.cp install2

file src, rm = 'README.md'
.cp file install2, rm

echo "Creating shortcuts..."
unless junction.$.y()
  do junction

echo "Updating PATH..."
addpath "#{install2.old}"
echo """
Installation complete.
Open new console and run '#{PACKAGE.mingzi} ?' to start.
"""
