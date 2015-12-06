###########################################################################
#
# NAME:
# fresh-windows-setup.ps1
#
# DESCRIPTION:
# PowerShell script to setup programs and preferences in a new installation of Windows
#
# REPOSITORY:
# https://github.com/hello-jason/windows-setup
#
# USAGE:
# * Run PowerShell as administrator, then paste the following script:
# iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/hello-jason/windows-setup/master/fresh-windows-setup.ps1'))
#
###########################################################################

###########################################################################
# Install Chocolatey, a Machine Package Manager, somewhat like apt-get, but built with Windows in mind.
# Documentation: https://chocolatey.org/
###########################################################################
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

###########################################################################
# Install programs
###########################################################################
# Standard
choco install -y 7zip.install
choco install -y adobereader
choco install -y ccleaner
choco install -y evernote
choco install -y f.lux
choco install -y firefox --force
choco install -y google-chrome-x64
choco install -y lightshot
choco install -y malwarebytes
choco install -y putty
choco install -y qbittorrent
choco install -y spotify
choco install -y toastify
choco install -y vlc

# Development
choco install -y atom
choco install -y cmder
choco install -y git
choco install -y heidisql
choco install -y sublimetext3
choco install -y sublimetext3.packagecontrol
choco install -y SourceTree
choco install -y virtualbox
choco install -y virtualbox.extensionpack
choco install -y winscp

# Want to add
# fontbase

###########################################################################
# Cleanup
###########################################################################
# Remove desktop icons for local user
Remove-Item "$env:USERPROFILE\Desktop\Atom.lnk"
Remove-Item "$env:USERPROFILE\Desktop\HeidiSQL.lnk"
Remove-Item "$env:USERPROFILE\Desktop\Spotify.lnk"
Remove-Item "$env:USERPROFILE\Desktop\Toastify.lnk"
# Remove desktop icons for Public user
Remove-Item "C:\Users\Public\Desktop\Acrobat Reader DC.lnk"
Remove-Item "C:\Users\Public\Desktop\CCleaner.lnk"
Remove-Item "C:\Users\Public\Desktop\Evernote.lnk"
Remove-Item "C:\Users\Public\Desktop\Google Chrome.lnk"
Remove-Item "C:\Users\Public\Desktop\Mozilla Firefox.lnk"
Remove-Item "C:\Users\Public\Desktop\Malwarebytes Anti-Malware.lnk"
Remove-Item "C:\Users\Public\Desktop\Oracle VM VirtualBox.lnk"
Remove-Item "C:\Users\Public\Desktop\VLC media player.lnk"
Remove-Item "C:\Users\Public\Desktop\WinSCP.lnk"

###########################################################################
# TODO
###########################################################################
# Remove startup items (Atom, Spotify)
# Setup preferences, such as Sublime
# Pin programs to taskbar
# Setup desktop theme
# Setup VM for development
# Install fonts