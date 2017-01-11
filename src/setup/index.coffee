###
Start setup operation
###
err ->
  suicide = try do require './suicide'
  require './setup'
  try suicide?()
