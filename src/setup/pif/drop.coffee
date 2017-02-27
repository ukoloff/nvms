###
Remove shortcuts
###
verb = require './verb'

for z in require '.'
  verb z, 'taskbarunpin'
  try
    z.rm()
