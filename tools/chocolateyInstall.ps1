$packageName = 'jmeter'
$url = 'http://archive.apache.org/dist/jmeter/binaries/apache-jmeter-2.13.zip' # download url

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

try {
  # Custom batch shim
  cp $env:ChocolateyInstall\lib\$packageName\tools\jmeter.bat $env:ChocolateyInstall\bin

} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw 
}


