# Install applications on fresh instance of Windows

## Included Software

* Clover
* Firefox
* Chrome
* uTorrent
* Thunderbird
* -7-zip- (having issues)
* VLC
* Spotify
* Greenshot
* PuTTY
* Sublime Text 3
* WinSCP
* SourceTree
* Flux
* HeidiSQL
* VirtualBox
* WPS Office

## Installation

* run PowerShell on destination machine `as administrator`

* loosen execution policy

```
Set-ExecutionPolicy Unrestricted
```

* paste this into powershell

```
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/hello-jason/windows-setup/master/setup.ps1'))
```

## To do with PowerShell

* Set unrestricted execution policy when calling script
* Remove desktop shortcuts
* Pin programs to taskbar
* Setup desktop theme
* Setup VM for development
* Sublime settings
* Install fonts