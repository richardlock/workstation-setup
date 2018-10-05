# Enable TLS 1.2 for downloads
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$webClient = New-Object System.Net.WebClient

# Enable Windows optional features
Invoke-Expression ($webClient.DownloadString('https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/Enable-WindowsOptionalFeatures.ps1'))

# Install Chocolatey packages
Invoke-Expression ($webClient.DownloadString('https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/Install-ChocolateyPackages.ps1'))

# Install miscellaneous
Invoke-Expression ($webClient.DownloadString('https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/Install-Miscellaneous.ps1'))

# Install dotfiles
Invoke-Expression ($webClient.DownloadString('https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/Install-Dotfiles.ps1'))

# Install Windows Subsystem for Linux
Invoke-Expression ($webClient.DownloadString('https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/Install-WslUbuntu.ps1'))

# Configure Windows Subsystem for Linux
Start-Process -FilePath wsl -ArgumentList 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/wsl/configure-wsl.sh)"' -Wait

# Install Ansible in Windows Subsystem for Linux
Start-Process -FilePath wsl -ArgumentList 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/wsl/install-ansible.sh)"' -Wait

# Install Docker in Windows Subsystem for Linux
Start-Process -FilePath wsl -ArgumentList 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/wsl/install-docker.sh)"' -Wait
