###
Create shortcuts
###
verb = require './verb'

for z in require '.'
  q = sh.CreateShortcut z
  q.TargetPath = 'cmd'
  q.Arguments = '/c gui.bat'
  q.WorkingDirectory = install2
  q.Description = PACKAGE.description
  q.WindowStyle = 7   # Minimized
  q.save()
  # Pin to TaskBar
  verb z, 'taskbarpin'
