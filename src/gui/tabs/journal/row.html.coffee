###
Journal tab template
###
module.exports = without ->
  # Persistent storage
  i.n ||= 0

  # printf "%02d"
  n2 = (n)->
    ('0' + Math.floor n).slice -2

  # Format TZ
  tz = (delta)->
    abs = Math.abs delta
    "GMT#{if delta < 0 then '+' else '-'}#{n2 abs / 60}#{n2 abs % 60}"

  # Format date
  date2str = (d)->
    "#{
      d.getFullYear()
      }-#{
      n2 1 + d.getMonth()
      }-#{
      n2 d.getDate()
      } #{
      n2 d.getHours()
      }:#{
      n2 d.getMinutes()
      }:#{
      n2 d.getSeconds()
      } #{
      tz d.getTimezoneOffset()
      }"

  # Format timestamp
  ts = (str = '', title)->
    while str.length < 4
      str = ' ' + str
    tt
      title: title
      -> raw str.replace /\s/g, '&nbsp;'
    return

  min = new Date now = new Date
  min.setSeconds 0, 0
  mini = min.getTime()
  if i.m != mini
    i.m = mini
    div
      class: 'tt'
      ts
      date2str min

  div
    class: if i.n++ & 1 then 'odd' else 'even'
    -> ts "#{now.getSeconds()}.#{Math.floor now.getMilliseconds() / 100}", date2str now
    @
  return
