# Dotfiles
$dotfilesDir = "$env:USERPROFILE\.dotfiles"
$dotfilesRepoBranch = 'windows'
$dotfilesRepoUri = 'https://github.com/richardlock/dotfiles.git'

#ConEmu
$conEmuConfigDir = "$env:APPDATA"

# Docker
$dockerDaemonConfigDir = "$env:ALLUSERSPROFILE\docker\config"

# Clone dotfiles Windows branch
git clone -b $dotfilesRepoBranch --single-branch $dotfilesRepoUri $dotfilesDir

# ConEmu symbolic link
New-Item -ItemType SymbolicLink -Path "$conEmuConfigDir\ConEmu.xml" -Value "$dotfilesDir\conemu\ConEmu.xml"

# Docker symbolic link
New-Item -ItemType Directory -Path $dockerDaemonConfigDir
New-Item -ItemType SymbolicLink -Path "$dockerDaemonConfigDir\daemon.json" -Value "$dotfilesDir\docker\daemon.json"
