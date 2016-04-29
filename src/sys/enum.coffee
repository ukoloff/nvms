module.exports = (collection, fn)->
  E = new Enumerator collection
  while !E.atEnd()
    return if false==fn? E.item()
    E.moveNext()
  return
