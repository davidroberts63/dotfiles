# Copy paste the line below in administrator powershell prompt
# Set-ExecutionPolicy Bypass; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/davidroberts63/dotfiles/master/windows/setup-box.ps1'))

if(-not (get-command FooBar -ErrorAction SilentlyContinue)) {
  Write-Host 'Installing Chocolatey'
  Set-ExecutionPolicy Bypass; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

Write-Host "Installing packages..."
@(
    "poshgit",
    "putty",
    "firefox",
    "nuget.commandline",
    "googlechrome"
) | %{ 
  & cinst.exe $_ -y
}
