# Windows capabilities
$windowsCapabilities = @(
  'RSAT*'
)

# Add Windows capabilities
ForEach ($windowsCapability in $windowsCapabilities) {
  Get-WindowsCapability -Name $windowsCapability -Online | Add-WindowsCapability -Online
}
