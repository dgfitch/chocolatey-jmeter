$packageName = 'jmeter'

try {
  # Remove custom shim
  rm $env:ChocolateyInstall\$env:chocolatey_bin_root\jmeter.bat
  Write-ChocolateySuccess $packageName

} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw 
}
