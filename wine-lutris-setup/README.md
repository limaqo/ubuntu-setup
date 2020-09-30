# wine-lutris-setup

### test

* this is a test
* this is another test

* DXVK
* Wine staging



* Lutris wiki: https://github.com/lutris/lutris/wiki



#### Installing drivers
  * installing drivers: https://github.com/lutris/docs/blob/master/InstallingDrivers.md

###### 32-bit architecture
* check if 32-bit architecture is enabled:
  * `dpkg --print-architecture` → amd64 (64-bit system)
  * `dpkg --print-foreign-architectures` → i386 (32-bit architecture is already enabled)
    * enable 32-bit architecture if not: `sudo dpkg --add-architecture i386`

###### Nvidia drivers
* Nvidia driver update: 440.100 → 450.66 in this case
  * `sudo apt update`
  * `sudo apt upgrade`
  * check version: `nvidia-smi`
  * add PPA for newer Nvidia drivers: `sudo add-apt-repository ppa:graphics-drivers/ppa`
  * search for drivers: `apt search nvidia-driver-*`
  * install latest driver: `sudo apt install nvidia-driver-450` (or whatever is the latest driver at the moment)
  * reboot
  * check version: `nvidia-smi`
  * check if required packages are installed: `apt list --installed | grep nvidia && apt list --installed | grep libvulkan`

#### Wine dependencies
install Wine: https://github.com/lutris/docs/blob/master/WineDependencies.md  
Wine installation instructions: https://wiki.winehq.org/Ubuntu  
* `wget -nc https://dl.winehq.org/wine-builds/winehq.key`
* `sudo apt-key add winehq.key`
* `rm winehq.key`
* `sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'`
* `sudo apt update`
* `sudo apt install --install-recommends winehq-staging`
* install these additional libraries for compatibility reasons: `sudo apt install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386` (they might actually already be installed)

#### Lutris
https://lutris.net/downloads/  
* `sudo add-apt-repository ppa:lutris-team/lutris`
* `sudo apt update`
* `sudo apt install lutris`

### Wine setup
* https://wiki.winehq.org/Winecfg
* launch "Wine configuration": `winecfg`
* "Graphics" tab → Screen resolution: 144 dpi → Apply
* relaunch "Wine configuration"

Wine Gecko Installer -> Install

######
nice to know:
https://wiki.winehq.org/List_of/_Commands
launch "Registry Editor": `wine regedit`
launch "Notepad": `wine notepad`

install app: `wine /media/cdrom/setup.exe`

winecfg
wineconsole (cmd.exe)
wine uninstaller

sample program: 7-Zip?
https://www.7-zip.org/

~/.wine is called a "Wineprefix"
~/.wine is the default wineprefix

`export WINEPREFIX=~/.wine-new`
`wine winecfg`
creates a new new wineprefix, better:
`WINEARCH=win32 WINEPREFIX=path_to_wineprefix winecfg`
all wineprefixes are independent from each other

create alias `wineswap`
prints current wineprefix and asks if user wants to swap [Y/n]

### Wine ToDo Edit
https://wiki.winehq.org/Wine_User's_Guide#Using_Winecfg
* add link to https://wiki.winehq.org/Winecfg
* sync Wine User's Guide at least a little
https://wiki.winehq.org/Winecfg
* add info that "The Applications, Libraries, and Graphics tabs are linked together" from the User Guide
* sync Winecfg at least a little
--> I need to become member of the group "Trustworthy"
lots of Authors (16): who is "actually" working on it?



