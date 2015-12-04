# Chocolatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

#############
# Install applications
#############
# Standard
choco install -y firefox
choco install -y google-chrome-x64
choco install -y lightshot

# Media
choco install -y vlc
choco install -y spotify
choco install -y f.lux
choco install -y putty

# Development tools
choco install -y atom
choco install -y cmder
choco install -y git
choco install -y heidisql
choco install -y sublimetext3
choco install -y sublimetext3.packagecontrol
choco install -y SourceTree
choco install -y virtualbox
choco install -y virtualbox.extensionpack
choco install -y vagrant
choco install -y winscp

# Other
choco install -y ccleaner
choco install -y uTorrent

#############
# TODO
#############
# Cleanup desktop icons
# Setup preferences, such as Sublime
# Pin programs to taskbar
# Setup desktop theme
# Setup VM for development
# Install fonts
