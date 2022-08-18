# Install Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod get.scoop.sh | Invoke-Expression

# Pre-requisite for extras bucket
scoop install git

# Scoop extras bucket
scoop bucket add extras

# Install Scoop packages
@(
    '7zip',
    'filezilla',
    'firefox',
    'googlechrome',
    'hashcheck',
    'mremoteng',
    'notepadplusplus',
    'paint.net',
    'putty',
    'rufus',
    'sysinternals',
    'vlc',
    'vscode',
    'windows-terminal',
    'winget',
    'winmerge',
    'winscp',
    'wireshark'
) | ForEach-Object { scoop install $_ }
