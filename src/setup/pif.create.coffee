###
Create shortcuts
###
for z in require './pif'
  q = sh.CreateShortcut z
  q.TargetPath = 'cmd'
  q.Arguments = '/c gui.bat'
  q.WorkingDirectory = install2
  q.WindowStyle = 7   # Minimized
  q.save()
  # Pin to TaskBar
  try
    z.abs().up().ns().ParseName z.bn()
      .InvokeVerb 'taskbarpin'
