# Visual Studio Code extensions
$vscodeExtensions = @(
  'ms-azuretools.vscode-docker',
  'ms-vscode.powershell',
  'ms-vscode-remote.remote-wsl',
  'ms-python.python',
  'vscoss.vscode-ansible'
)

# Install Visual Studio Code extensions
$vscodeExtensions | ForEach-Object {
  Start-Process -FilePath 'code' -ArgumentList "--install-extension $_" -Wait
}
