# Workstation setup

Run the following from an administrative PowerShell prompt to install and configure a Windows workstation, including WSL Ubuntu.
A reboot is required to enable Windows optional features, and then the script should be run again.
The first launch of WSL requires a new username and password to be configured.
After this, close the first WSL window to continue with the rest of the script.
```
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/Install-Workstation.ps1'))
```