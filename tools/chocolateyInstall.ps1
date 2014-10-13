$packageName = 'jmeter'
$url = 'http://apache.mirrors.tds.net/jmeter/binaries/apache-jmeter-2.11.zip' # download url

try {
  # Custom batch shim
  cp $env:ChocolateyInstall\lib\$packageName.2.11\tools\jmeter.bat $env:ChocolateyInstall\$env:chocolatey_bin_root

} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw 
}

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

