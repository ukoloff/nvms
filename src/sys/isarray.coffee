toString = [].toString
ok = toString.call []

module.exports =
Array.isArray ||= (arr)->
  ok == toString.call arr
