# Docker daemon config
$dockerDaemonConfigDir = 'C:\ProgramData\docker\config'
$dockerDaemonConfigFile = 'daemon.json'
$dockerDaemonConfigUri = 'https://raw.githubusercontent.com/richardlock/dotfiles/windows/docker/daemon.json'

# Enable TLS 1.2 for downloads
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Install Docker daemon config
New-Item -Path $dockerDaemonConfigDir -Type Directory
Invoke-WebRequest -Uri $dockerDaemonConfigUri -OutFile (Join-Path $dockerDaemonConfigDir $dockerDaemonConfigFile)