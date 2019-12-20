# Dotfiles
$dotfilesDir = "$env:USERPROFILE\.dotfiles"
$dotfilesRepoBranch = 'windows'
$dotfilesRepoUri = 'https://github.com/richardlock/dotfiles.git'

# Docker
$wslttyAppdataDir = "$env:APPDATA\wsltty"

# Clone dotfiles Windows branch
git clone -b $dotfilesRepoBranch --single-branch $dotfilesRepoUri $dotfilesDir

# Wsltty symbolic link
New-Item -ItemType Directory -Path $wslttyAppdataDir
New-Item -ItemType SymbolicLink -Path "$wslttyAppdataDir\config" -Value "$dotfilesDir\wsltty\config"
