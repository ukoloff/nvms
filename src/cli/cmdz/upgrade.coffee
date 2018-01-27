sensor = require 'self/upgrade/sensor'
vfilter = require '../vfilter'

exports.t = "Upgrade latest/LTS Node or #{PACKAGE.mingzi} itself"

exports.h = """
  Download and install latest version of #{PACKAGE.mingzi}, Node or Node LTS version
  """

exports.$ = (args)->
  force = period args
  up = sensor.u()
  unless key = abbrev(keys up).$ args[0]
    hint up
    exit()

  unless (up = up[key]).a or force
    echo "Upgrade not needed. To force upgrade say:", period.$()
    exit()

  echo "Upgrading:", up.N, '->', up.v or latestStr
  if up.n
    do require 'self/upgrade/upgrade'
  else
    # Delegate to install command
    require './install'
      .$ [up.k, args[1], '.']
  exit()
  return

keys = (rec)->
  for k of rec
    k

# Command arguments
exports._ = "[#{keys(sensor.u true).join '|'}] #{vfilter.$6} [.]"

hint = (info)->
  avail = []
  na = []
  for k, v of info
    v.k = k
    (if v.a then avail else na).push v

  if avail.length
    echo "Available upgrades:"
  for v in avail
    hintLine v

  if na.length
    if avail.length
      echo ''
    echo "Possible upgrades:"
  for v in na
    hintLine v

  return

latestStr = 'latest'

hintLine = (info)->
  echo "\t",
    PACKAGE.mingzi
    "upgrade"
    info.k
    if info.a then '' else '.'
    "\t//"
    info.N
    '->'
    info.v or latestStr
