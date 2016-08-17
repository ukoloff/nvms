#
# Create shortcuts
#
for z in shortcuts
  z = sh.CreateShortcut z
  z.TargetPath = fs.BuildPath install2, 'gui.bat'
  z.Description = PACKAGE.description
  z.WindowStyle = 7   # Minimized
  z.save()
