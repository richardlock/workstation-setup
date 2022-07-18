# Enable TLS 1.2 for downloads
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$webClient = New-Object System.Net.WebClient

# Enable Windows capabilities
Invoke-Expression ($webClient.DownloadString('https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/Enable-WindowsCapabilities.ps1'))

# Install Scoop packages
Invoke-Expression ($webClient.DownloadString('https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/Install-ScoopPackages.ps1'))

# Install miscellaneous
Invoke-Expression ($webClient.DownloadString('https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/Install-Miscellaneous.ps1'))

# Install Windows Subsystem for Linux
Invoke-Expression ($webClient.DownloadString('https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/Install-WslUbuntu.ps1'))

# Configure Windows Subsystem for Linux
Start-Process -FilePath wsl -ArgumentList 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/richardlock/workstation-setup/master/scripts/wsl/configure-wsl.sh)"' -Wait
