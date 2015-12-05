# Install applications on fresh instance of Windows

## Installation

* run PowerShell on destination machine `as administrator`
* paste this command

```
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/hello-jason/windows-setup/master/fresh-windows-setup.ps1'))
```
