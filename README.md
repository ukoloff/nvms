# nvm$

Node Version Manager for M$ Windows.

Inspired by [nvmw][]
and [nvm-windows][]
(and of course [nvm][] itself),
but totally rewritten using [Microsoft Scripting Host][].

## Advantages

- Written in JavaScript itself (well, JScript)
- Creates `node.exe` for iojs distributions (along with `iojs.exe`)
- Generates console-less Node.js binary (`nodew.exe`)
- Can optionally install OpenSSL binary
- Adds single entry to PATH environment variable

## Installation

If you have `git` installed:

  * git clone https://github.com/ukoloff/nvms.git -b dist
  * nvms/setup

If you have got no `git`
or don't like to use command prompt:

  * Download https://github.com/ukoloff/nvms/archive/dist.zip
  * Start downloaded `nvms-dist.zip` (in Explorer)
  * Click `setup.bat`
  * Windows will prompt to extract all files
  * Agree
  * Click `setup.bat` again

After installation you should close command prompt (if any)
and open new one to use `nvm$`.

## Update

For new version of nvm$ to install
just repeat installation steps above.

This can be done with `nvm$ upgrade` command.

## How it works

Fiddling environment variables may be tricky especially on Windows.
So, nvm$ adds itself to PATH during setup
and then simply switch folder referred to by PATH.

Therefore all the processes of current user immediately see this change.
There is the only Node.js version active at any moment of time
(unlike nvm).

nvm$ is always installed to a user,
it cannot be installed system-wide.

Technically, for switching Node.js version
it uses NTFS junction point.
As there is no standard ActiveX control for junction point manipulations,
command line utility from
[Sysinternals suite][Windows Sysinternals] is used.

## Specifying Node.js version

Due to using JavaScript for processing,
it appeared possible
(and even easy)
to do exhaustive command line parsing.

For most commands,
where Node.js version should be specified,
it is possible to select
(in any set and order):

- Distribution (`node` or `iojs`)
- Platform (`x86` or `x64`)
- Version (`7` or `4.9` or may be `0.10.27`)

Any parameter can be abbreviated, eg `nvm$ i i`
is equivalent to `nvm$ install iojs`
(that is `nvm$ i 3`)
and `nvm$ o x8` means
`nvm$ openssl x86`.

Commands `nvm$ install` and `nvm$ use` select latest
(maximal)
of all possible versions,
while `nvm$ remove` deletes oldest
(minimal) one.

Therefore to install freshest Node.js
with default platform just type `nvm$ i`,
while `nvm$ i x6` installs
latest 64-bit version.

## Credits

  * [Node.js][]
  * [io.js][]
  * [Windows Script Host][]
  * [nvm][]
  * [nvmw][]
  * [nvm-windows][]
  * [Windows Sysinternals][]
  * [webpack][]
  * [cmdizer][]

[Node.js]: http://nodejs.org/
[io.js]: https://iojs.org/
[Windows Script Host]: https://en.wikipedia.org/wiki/Windows_Script_Host
[nvm]: https://github.com/creationix/nvm
[nvmw]: https://github.com/hakobera/nvmw
[nvm-windows]: https://github.com/coreybutler/nvm-windows
[Windows Sysinternals]: https://technet.microsoft.com/en-US/en-en/nternals/
[webpack]: http://webpack.github.io/
[cmdizer]: http://www.dostips.com/forum/viewtopic.php?p=37780#p37780
