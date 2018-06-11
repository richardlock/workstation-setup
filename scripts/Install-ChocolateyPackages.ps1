# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Chocolatey packages
choco install `
  7zip `
  adobereader `
  atom `
  conemu `
  docker-for-windows `
  f.lux `
  filezilla `
  firefox `
  git `
  googlechrome `
  hashcheck `
  hipchat `
  jre8 `
  mobaxterm `
  mremoteng `
  paint.net `
  packer `
  pstools `
  putty.install `
  rsat `
  rufus.install `
  sysinternals `
  vagrant `
  vlc `
  vscode `
  windirstat `
  winmerge `
  winscp `
  wireshark

# Install Notepad++ x86
choco install notepadplusplus --x86