# Windows capabilities
$windowsCapabilities = @(
  'RSAT*'
)

# Windows optional features
$windowsOptionalFeatures = @(
  'HypervisorPlatform',
  'Microsoft-Hyper-V',
  'Microsoft-Windows-Subsystem-Linux'
)

# Enable Windows optional features
ForEach ($windowsOptionalFeature in $windowsOptionalFeatures) {
  If ((Get-WindowsOptionalFeature -Online | Where-Object {$_.FeatureName -eq $windowsOptionalFeature}).State -eq 'Disabled') {
    Enable-WindowsOptionalFeature -FeatureName $windowsOptionalFeature -Online -NoRestart -All
  }
}

# Add Windows capabilities
ForEach ($windowsCapability in $windowsCapabilities) {
  Get-WindowsCapability -Name $windowsCapability -Online | Add-WindowsCapability -Online
}
