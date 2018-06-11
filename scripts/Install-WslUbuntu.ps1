$wslUbuntuUri = 'https://aka.ms/wsl-ubuntu-1604'

# Download Ubuntu archive
If (!(Test-Path -Path '~\Ubuntu.zip')) {
  Invoke-WebRequest -Uri $wslUbuntuUri -OutFile '~/Ubuntu.zip'
}
  
# Extract Ubuntu archive
If (!(Test-Path -Path '~\Ubuntu')) {
  Expand-Archive '~\Ubuntu.zip' '~\Ubuntu'
}
  
# Initialise Ubuntu
Start-Process -FilePath '~\Ubuntu\ubuntu.exe' -Wait  