###
Start setup operation
###
require('self/tools/guard') ->
  try suicide = do require './suicide'
  require './setup'
  try suicide?()
  return
