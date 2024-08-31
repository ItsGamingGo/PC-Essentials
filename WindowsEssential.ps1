## Check if the script is running with administrative privileges
#if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(Security.Principal.WindowsBuiltInRole]::Administrator))
#{
#  Write-Host "Please run this script as an administrator. Error:Ferdi "
#  exit
#}
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install -y opera-gx 7zip googlechrome python3 vlc vscode sdio anydesk icue spotify spicetify-cli 
