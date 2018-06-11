# Windows optional features
$windowsOptionalFeatures = @(
  'Microsoft-Hyper-V',
  'Microsoft-Windows-Subsystem-Linux',
  'TelnetClient'
)

# Enable Windows optional features
ForEach ($windowsOptionalFeature in $windowsOptionalFeatures) {
  If ((Get-WindowsOptionalFeature -Online | Where-Object {$_.FeatureName -eq $windowsOptionalFeature}).State -eq 'Disabled') {
    Enable-WindowsOptionalFeature -FeatureName $windowsOptionalFeature -Online -NoRestart -All
  }
}