$wslUbuntuUri = 'https://aka.ms/wsl-ubuntu-1804'

# Download Ubuntu archive
If (!(Test-Path -Path '~\Ubuntu.zip')) {
  Invoke-WebRequest -Uri $wslUbuntuUri -OutFile '~/Ubuntu.zip' -UseBasicParsing
}
  
# Extract Ubuntu archive
If (!(Test-Path -Path '~\Ubuntu')) {
  Expand-Archive -Path '~\Ubuntu.zip' -DestinationPath '~\Ubuntu'
}
  
# Initialise Ubuntu
Start-Process -FilePath '~\Ubuntu\ubuntu1804.exe' -Wait  
