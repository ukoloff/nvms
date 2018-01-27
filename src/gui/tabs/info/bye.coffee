###
Complete uninstall
###
ask = require '../../ask'

module.exports = ->
  ask.y "Kill'em all", "bye", ->
    locals.b ->
    dom.body.innerHTML = require('./bye.html') byron
    defer exit
