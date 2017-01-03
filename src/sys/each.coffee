###
Iterate thru OLE Collection
###
module.exports = (collection, fn)->
  res = [] if 'function' != typeof fn
  n = 0
  E = new Enumerator collection
  while !E.atEnd()
    if res
      res.push E.item()
    else if false == fn E.item(), n++
      return
    E.moveNext()
  res
