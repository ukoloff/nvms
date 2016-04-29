module.exports = (collection, fn)->
  breaker = {}
  E = new Enumerator collection
  while !E.atEnd()
    return if false==fn? E.item()
    E.moveNext()
  return
