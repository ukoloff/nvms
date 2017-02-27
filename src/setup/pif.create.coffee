###
Create shortcuts
###
for z in require './pif'
  z = sh.CreateShortcut z
  z.TargetPath = 'cmd'
  z.Arguments = '/c gui.bat'
  z.WorkingDirectory = install2
  z.WindowStyle = 7   # Minimized
  z.save()
