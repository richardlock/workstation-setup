# Visual Studio Code extensions
$vscodeExtensions = @(
  'peterjausovec.vscode-docker',
  'ms-vscode.powershell',
  'vscoss.vscode-ansible'  
)

# Install Visual Studio Code extensions
$vscodeExtensions | ForEach-Object {
  Start-Process -FilePath 'C:\Program Files\Microsoft VS Code\bin\code' -ArgumentList "--install-extension $_" -Wait
}
