# This script is to automate the installation of software.
# There are three types of software that can be allowed to be installed
# - Software for Common Use
# - Software for Software Engineering Lab
# - Software for Personal Use


# Install software for common use
# This is the software that will be needed on multiple courses
# Software that will be installed:
# Firefox, Visual Studio Code, Adobe Acrobat Reader, Github Desktop, VLC Media Player

Write-Host "Install software for common use" -ForegroundColor Green;
# Set empty line
Write-Host "";
# List software to install
Write-Host "This will install the following programs:";
Write-Host " - Firefox";
Write-Host " - Visual Studio Code";
Write-Host " - Adobe Acrobat Reader";
Write-Host " - Github Desktop";
Write-Host " - VLC Media Player";
# Set empty line
Write-Host "";
 
# Ask for permission to install the listed programs
$approved = Read-Host "Do you approve to install these programs? (y/n)";
while ($approved -notlike "y*" -and $approved -notlike "n*") {
    Write-Output "Please answer with y or n.";
    $approved = Read-Host "Do you approve to install these programs? (y/n)";
}
# Set empty line
Write-Host "";
# Install listed software
if ($approved -like "y") {
    choco install -y Firefox;
    choco install -y vscode;
    choco install -y adobereader;
    choco install -y github-desktop;
    choco install -y vlc 
} else {
    Write-warning "Don't install software for Common Use";
}
# Set empty line
Write-Host "";

# Install software for Software Engineering Lab
# This is the extra software that will be needed for the course: Software Engineering Lab
# List of the installed software:
# FileZilla, VirtualBox, MySQL Workbench
Write-Host "Install software for Software Engineering Lab" -ForegroundColor Green;
# Set empty line
Write-Host "";
# List software to install
Write-Host "This will install the following programs:";
Write-Host " - FileZilla";
Write-Host " - Virtual Box";
Write-Host " - MySQL Workbench";
# Set empty line
Write-Host "";
# Ask for permission to install the listed programs
$approved = Read-Host "Do you approve to install these programs? (y/n)";
while ($approved -notlike "y*" -and $approved -notlike "n*") {
    Write-Output "Please answer with y or n.";
    $approved = Read-Host "Do you approve to install these programs? (y/n)";
}
# Set empty line
Write-Host "";
# Install software using chocolatey
if ($approved -like "y") {
    choco install -y filezilla;
    choco install -y mysql.workbench;
    choco install -y virtualbox;
} else {
    Write-warning "Don't install software for Software Engineering Lab";
}
# Set empty line
Write-Host "";

# Install software for personal use
# This is software that will be used for personal use
# List of software to be installed:
# - Fork
# - IntelliJ

Write-Host "Install software for personal use" -ForegroundColor Green;
# Set empty line
Write-Host "";
# List software to install
Write-Host "This will install the following programs:";
Write-Host " - Fork";
Write-Host " - IntelliJ Community Edition";
# Set empty line
Write-Host "";
 # Ask for permission to install the listed programs
$approved = Read-Host "Do you approve to install these programs? (y/n)";
while ($approved -notlike "y*" -and $approved -notlike "n*") {
    Write-Output "Please answer with y or n.";
    $approved = Read-Host "Do you approve to install these programs? (y/n)";
}
# Set empty line
Write-Host "";
# Install software using chocolatey
if ($approved -like "y") {
    choco install -y git-fork;
    choco install -y intellijidea-community;
}else {
    Write-warning "Don't install software for Personal Use";
}
Write-Host "";
# End script
Write-Host "End script: InstallSoftware.ps1" -ForegroundColor Green;