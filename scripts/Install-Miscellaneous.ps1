# ConEmu font
$fontFileName = 'Ubuntu Mono Nerd Font Complete Mono Windows Compatible.ttf'
$fontUri = 'https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf'

# Visual Studio Code extensions
$vscodeExtensions = @(
  'peterjausovec.vscode-docker',
  'ms-vscode.powershell',
  'vscoss.vscode-ansible'  
)

# Install font for ConEmu
$fontFilePath = Join-Path $env:temp $fontFileName
$systemFontsFolder = (New-Object -ComObject Shell.Application).Namespace(0x14)
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $fontUri -OutFile $fontFile
If (!(Test-Path (Join-Path $systemFontsPath $fontFileName))) {
  $systemFontsFolder.CopyHere($fontFilePath)
}
If (Test-Path $fontFilePath) {
  Remove-Item $fontFilePath
}

# Install Visual Studio Code extensions
$vscodeExtensions | ForEach-Object {
  Start-Process -FilePath 'C:\Program Files\Microsoft VS Code\bin\code' -ArgumentList "--install-extension $_" -Wait
}
