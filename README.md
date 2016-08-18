# nvm$

Node Version Manager for M$ Windows.

Inspired by [nvmw](https://github.com/hakobera/nvmw)
and [nvm-windows](https://github.com/coreybutler/nvm-windows)
(and of course [nvm](https://github.com/creationix/nvm) itself),
but totally rewritten using Microsoft Scripting Host.

It also provides simple way to install OpenSSL utility on Windows.

## Installation

If you have `git` installed:

  * git clone https://github.com/ukoloff/nvms.git -b dist
  * nvms/setup

If you have got no `git` or don't like to use command prompt:

  * Download https://github.com/ukoloff/nvms/archive/dist.zip
  * Start downloaded `nvms-dist.zip` (in Explorer)
  * Click `setup.bat`
  * Windows will prompt to extract all files
  * Agree
  * Click `setup.bat` again

After installation you should close command prompt (if any) and open new one to use `nvm$`.

## Update

For new version of nvm$ to install just repeat installation steps above.

## How it works

Fiddling environment variables may be tricky especially on Windows.
So, nvm$ adds itself to PATH during setup and then simply switch
folder referred to by PATH.

Therefore all the processes of current user immediately see this change.
There is the only Node.js version active at any moment of time
(unlike nvm).

nvm$ is always installed to a user, it cannot be installed system-wide.

Technically, for switching Node.js version it uses NTFS junction point.
As there is no standard ActiveX control for junction point manipulations,
command line utility from Sysinternals suite is used.

## Credits

  * [Node.js](http://nodejs.org/)
  * [io.js](https://iojs.org/)
  * [Windows Script Host](https://en.wikipedia.org/wiki/Windows_Script_Host)
  * [nvm](https://github.com/creationix/nvm)
  * [nvmw](https://github.com/hakobera/nvmw)
  * [nvm-windows](https://github.com/coreybutler/nvm-windows)
  * [Windows Sysinternals](https://technet.microsoft.com/en-US/en-en/sysinternals/)
  * [webpack](http://webpack.github.io/)
  * [cmdizer](http://www.dostips.com/forum/viewtopic.php?p=37780#p37780)
