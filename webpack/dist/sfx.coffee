###
Generate distro
###
fs = require 'fs'
path = require 'path'
spawn = require 'child_process'

yazl = require 'yazl'
mkdirp = require 'mkdirp'
  .sync

PACKAGE = require '../../package'
rm = require './rm'

console.log "Creating sfx at", dst = path.resolve 'tmp/sfx'
rm dst
mkdirp dst

install2 = path.join process.env.APPDATA, PACKAGE.mingzi

fs.createReadStream path.join dst, '..', extractor = 'sfx.bat'
.pipe fs.createWriteStream path.join dst, extractor = 'sfx.bat'

openssl = (at)->
  openssl = 0
  exe = path.join at, cli = 'openssl-cli.exe'
  fs.stat exe, (err)->
    return if err
    console.log "Copying OpenSSL"
    openssl = spawn.spawnSync exe, ['version']
      .stdout.toString().trim()
    fs.createReadStream exe
    .pipe fs.createWriteStream path.join dst, cli

openssl install2

nodes = require './ls'
nodesII = nodes.slice()

skipFile = (name)->
  z = path.parse name
  switch z.ext.toLowerCase()
    when '.exe'
      return 'node' != z.name
    when '.bat'
      return PACKAGE.mingzi == z.name

zipTree = (name, from)->
  console.log "Packing:", name += '.zip'
  zip = new yazl.ZipFile
  zip.outputStream
  .pipe fs.createWriteStream path.join dst, name
  .on 'error', (e)->
    throw e
  .on 'close', ->
    do zipNext
  do folder = (relative = '')->
    fs.readdirSync path.join from, relative
    .forEach (file)->
      full = path.join from, short = path.join relative, file
      if fs.statSync(full).isDirectory()
        folder short
        return
      if !relative and skipFile file
        return
      zip.addFile full, short, compress: false
  zip.end()

zipTree PACKAGE.mingzi, require './repo'

zipNext = ->
  unless local = nodes.pop()
    do zipped
    return
  zipTree local, path.join install2, local

# Everything is zipped. Pack using iexpress
zipped = ->
  files = fs.readdirSync dst
  out = fs.createWriteStream path.join dst, 'banner.txt'
  out.write crlf """
    The following software will be installed:

      > #{PACKAGE.mingzi} (#{PACKAGE.description})

        - v#{PACKAGE.version}

      > Node.js


  """

  unless nodesII.length
    nodesII.push 'none'
  for v in nodesII by -1
    out.write crlf "    - #{v}\n"
  out.end crlf """

      > OpenSSL

        - #{openssl or 'none'}

    For more information see: #{PACKAGE.homepage}
  """

  out = fs.createWriteStream sed = path.join dst, 'sfx.sed'
  out.write """
    [Version]
    Class=IEXPRESS
    SEDVersion=3
    [Options]
    PackagePurpose=InstallApp
    ShowInstallProgramWindow=0
    HideExtractAnimation=0
    UseLongFileName=1
    InsideCompressed=0
    CAB_FixedSize=0
    CAB_ResvCodeSigning=0
    RebootMode=N
    InstallPrompt=
    DisplayLicense=#{path.join dst, 'banner.txt'}
    FinishMessage=
    TargetName=#{exe = path.join dst, PACKAGE.mingzi + '.exe'}
    FriendlyName=#{PACKAGE.mingzi}
    AppLaunched=cmd /c sfx.bat
    PostInstallCmd=<None>
    AdminQuietInstCmd=
    UserQuietInstCmd=
    SourceFiles=SourceFiles
    [Strings]
    [SourceFiles]
    SFX=#{dst}
    [SFX]

  """
  for f in files by -1
    out.write "#{f}=\n"
  out.end()

  out.on 'close', ->
    wait spawn.spawn 'iexpress', ['/N', sed],
      detached: true
      stdio: 'ignore'

  console.log 'SFX to be created:', exe

crlf =(text)->
  text.replace /\n/g, "\r\n"

wait = (child)->
  child.on 'error', (e)->
    throw e
  child.unref() if process.stdout.isTTY
