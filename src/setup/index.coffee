###
Start setup operation
###
require('../tools/err') ->
  try suicide = do require './suicide'
  require './setup'
  try suicide?()
  return
