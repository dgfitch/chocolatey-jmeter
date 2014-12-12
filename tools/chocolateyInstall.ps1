$packageName = 'jmeter'
$url = 'http://archive.apache.org/dist/jmeter/binaries/apache-jmeter-2.12.zip' # download url

try {
  # Custom batch shim
  cp $env:ChocolateyInstall\lib\$packageName.2.12\tools\jmeter.bat $env:ChocolateyInstall\$env:chocolatey_bin_root

} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw 
}

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

