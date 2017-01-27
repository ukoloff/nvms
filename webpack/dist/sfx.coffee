###
Generate distro
###
fs = require 'fs'
path = require 'path'
spawn = require 'child_process'
  .spawn

yazl = require 'yazl'
mkdirp = require 'mkdirp'
  .sync

PACKAGE = require '../../package'
rm = require './rm'

console.log "Creating sfx at", dst = path.resolve 'tmp/sfx'
rm dst
mkdirp dst

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
  zipTree local, path.join process.env.APPDATA, PACKAGE.mingzi, local

# Everything is zipped. Pack using iexpress
zipped = ->
  files = fs.readdirSync dst
  out = fs.createWriteStream path.join dst, 'banner.txt'
  out.write "#{PACKAGE.mingzi} v#{PACKAGE.version} will be installed along with the following Node.js versions:\r\n\r\n"
  for v in nodesII by -1
    out.write "  - #{v}\r\n"
  out.end "\r\nSee <#{PACKAGE.homepage}> for more information.";

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
    FinishMessage=That's all folks!
    TargetName=#{exe = path.join dst, PACKAGE.mingzi + '.exe'}
    FriendlyName=#{PACKAGE.mingzi}
    AppLaunched=cmd /c pause
    PostInstallCmd=<None>
    AdminQuietInstCmd=
    UserQuietInstCmd=
    SourceFiles=SourceFiles
    [Strings]
    [SourceFiles]
    SFX=#{dst}
    [SFX]

  """
  for f in files
    out.write "#{f}=\n"
  out.end()

  spawn 'iexpress', ['/N', sed],
    detached: true
    stdio: 'ignore'
  .on 'error', (e)-> throw e
  .unref()

  console.log 'SFX created:', exe
