Write-Host "Getting ChocolateyGet..."
Install-PackageProvider ChocolateyGet
Import-PackageProvider ChocolateyGet

Write-Host "Installing packages..."
@(
    "poshgit",
    "putty",
    "firefox",
    "nuget.commandline"
) | %{ Install-Package $_ -Provider ChocolateyGet -Verbose }
