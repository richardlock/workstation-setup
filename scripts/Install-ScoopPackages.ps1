# Install Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod get.scoop.sh | Invoke-Expression

# Install Chocolatey packages
scoop install `
7zip
filezilla
firefox
git
googlechrome
hashcheck
mremoteng
notepadplusplus
paint.net
putty
rufus
sysinternals
vlc
vscode
windows-terminal
winget
winmerge
winscp
wireshark
