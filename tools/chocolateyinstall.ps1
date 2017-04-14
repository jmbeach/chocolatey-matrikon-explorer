$packageName = 'matrikon-explorer'
$fileName = 'MobileOPCExplorer.zip'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$zipPath = "$toolsPath\$fileName"

Get-ChocolateyUnzip -PackageName $packageName -FileFullPath $zipPath -Destination $toolsPath
rm $zipPath -ea 0

# create alias

$N = "`r`n"

$batch = "@echo off"+$N+"echo."+$N+"$fileName %*"

echo $batch > "$toolsPath\matrikon-explorer.bat"
