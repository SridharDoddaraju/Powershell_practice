# Check if Chocolatey is installed, and if not, install it
if (-not (Get-Command -Name 'choco' -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Git using Chocolatey
choco install git -y

# Verify the Git installation
$gitVersion = git --version
if ($gitVersion -match "git version (\d+\.\d+\.\d+)") {
    Write-Host "Git $($Matches[1]) has been successfully installed."
} else {
    Write-Host "Git installation failed."
}
