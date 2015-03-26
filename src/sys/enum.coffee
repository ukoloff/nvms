module.exports = (collection, fn)->
  breaker = {}
  E = new Enumerator collection
  while !E.atEnd()
    return if breaker==fn? E.item(), breaker
    E.moveNext()
  return
