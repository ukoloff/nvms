#
# Poor man's jQuery ;-)
#
module.exports =
$ = (selector, context = dom)->
  selector = String selector
  switch selector.substring 0, 1
    when '#'
      [context.getElementById selector.substring 1]
    when '.'
      toArray context.getElementsByClassName selector.substring 1
    else
      toArray context.getElementsByTagName selector

toArray = (array)->
  z for z in array
