# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Chocolatey packages
choco install -y `
  7zip `
  adobereader `
  docker-desktop `
  filezilla `
  firefox `
  git `
  googlechrome `
  hashcheck `
  mremoteng `
  paint.net `
  packer `
  pstools `
  putty.install `
  rufus `
  sysinternals `
  vlc `
  vscode `
  windirstat `
  winmerge `
  winscp `
  wireshark `
  wsltty

# Install Notepad++ x86
choco install -y notepadplusplus --x86
