# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Chocolatey packages
choco install -y `
  7zip `
  adobereader `
  conemu `
  docker-desktop `
  filezilla `
  firefox `
  git `
  googlechrome `
  hashcheck `
  jre8 `
  mremoteng `
  paint.net `
  packer `
  pstools `
  putty.install `
  rufus `
  sysinternals `
  vagrant `
  vlc `
  vscode `
  windirstat `
  winmerge `
  winscp `
  wireshark

# Install Notepad++ x86
choco install -y notepadplusplus --x86
