# Copy paste the line below in administrator powershell prompt
# Set-ExecutionPolicy Bypass; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/davidroberts63/dotfiles/master/windows/setup-box.ps1'))

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
