###
User confirmation
###

# Install listener to .ask
one = (span, fn)->
  for a, i in $ 'a', span
    a.onclick = do (i)-> ->
      setTimeout ->
        fn i
      false
  return

# Install listeners for many .ask
exports.x = (dom, fn, array)->
  for span in $ 'span', dom when 'ask' == span.className
    one span, do (span, data = array.shift())-> (i)->
      fn i, data
