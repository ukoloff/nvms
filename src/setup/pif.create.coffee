###
Create shortcuts
###
for z in require './pif'
  z = sh.CreateShortcut z
  z.TargetPath = file install2, 'gui.bat'
  z.Description = PACKAGE.description
  z.WindowStyle = 7   # Minimized
  z.save()
