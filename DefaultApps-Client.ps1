# Call this script from a powershell command prompt using this command:
# $Script = Invoke-WebRequest -uri "https://raw.githubusercontent.com/jpitgit/scripts/master/DefaultApps-Client.ps1"
# Invoke-Expression $($Script.Content)

# Preparation
Set-PSRepository PSGallery -InstallationPolicy Trusted
Set-ExecutionPolicy RemoteSigned -Force
New-Item -Path C:\ -Name Scripts -ItemType Directory

Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-WebRequest -uri "https://chocolatey.org/install.ps1" -UseBasicParsing | Invoke-Expression

# Essential tools
Choco install firefox -y
Choco install googlechrome -y
Choco install 7zip -y
choco install microsoft-edge -y

# Reboot to complete installation
Restart-Computer
