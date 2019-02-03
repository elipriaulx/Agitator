$fileVersion = (Get-Item "$env:APPVEYOR_BUILD_FOLDER\Agitator.Apps.Desktop\bin\x64\Release\Agitator.exe").VersionInfo.ProductVersion

$installerSource = "$env:APPVEYOR_BUILD_FOLDER\Agitator.Installers.Desktop\bin\Release\Agitator.msi"
$installerName = "Agitator-x64-v$fileVersion.msi"

Rename-Item -Path $installerSource -NewName $installerName