# Docker daemon config
$dockerDaemonConfigFile = 'C:\ProgramData\docker\config\daemon.json'
$dockerDaemonConfigUri = 'https://raw.githubusercontent.com/richardlock/dotfiles/windows/docker/daemon.json'

# Enable TLS 1.2 for downloads
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Install Docker daemon config
Invoke-WebRequest -Uri $dockerDaemonConfigUri -OutFile $dockerDaemonConfigFile