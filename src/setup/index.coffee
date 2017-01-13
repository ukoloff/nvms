###
Start setup operation
###
require('self/tools/err') ->
  try suicide = do require './suicide'
  require './setup'
  try suicide?()
  return
