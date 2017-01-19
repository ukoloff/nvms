###
Poor man's jQuery
###
module.exports =
$ = (selector, context = dom)->
  selector = '' + selector
  switch selector.charAt 0
    when '#'
      [context.getElementById selector.substring 1]
    when '.'    # MSIE 9+
      toArray context.getElementsByClassName selector.substring 1
    else
      toArray context.getElementsByTagName selector

toArray = (array)->
  z for z in array
