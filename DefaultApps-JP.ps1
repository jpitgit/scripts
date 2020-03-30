# Call this script from a powershell command prompt using this command:
# Invoke-WebRequest -uri "https://raw.githubusercontent.com/jpitgit/scripts/DefaultApps-JP.ps1"

# Preparation
Set-PSRepository PSGallery -InstallationPolicy Trusted
Set-ExecutionPolicy RemoteSigned -Force
New-Item -Path C:\ -Name Scripts -ItemType Directory

# Install RSAT
Install-WindowsFeature -IncludeAllSubFeature RSAT

Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-WebRequest -uri "https://chocolatey.org/install.ps1" -UseBasicParsing | Invoke-Expression
# Chocolatey tools
Choco install chocolatey-gui -y

# Essential tools
Choco install notepadplusplus -y
Choco install googlechrome -y
Choco install 7zip -y
Choco install winscp -y
Choco install openssh -y
Choco install sharex -y
choco install microsoft-edge -y
choco install putty -y
choco install mremoteng -y
choco install teamviewer -y

# Microsoft Tools
Choco install vscode -y
Choco install vscode-powershell -y

# Reboot to complete installation
Restart-Computer
