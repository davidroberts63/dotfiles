Write-Host "Getting ChocolateyGet..."
Install-PackageProvider ChocolateyGet
Import-PackageProvider ChocolateyGet
Register-PackageSource -Name Chocolatey -Provider ChocolateyGet -Trusted -Location https://www.chocolatey.org

Write-Host "Installing packages..."
@(
    "poshgit",
    "putty",
    "firefox",
    "nuget.commandline",
    "googlechrome"
) | %{ Install-Package $_ -Provider ChocolateyGet -Verbose }
