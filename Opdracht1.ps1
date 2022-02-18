# Automatiseren software-installatie

#  ====   Write script to complete challenges ====

# Wait until user is ready
Write-Host "Press a key to move to the next step: Print 'Hello World'" -ForegroundColor DarkCyan;
PAUSE;
# Print Hello World
Write-Host "Hello world" -ForegroundColor Yellow;
Write-Host "Press a key to move to the next step: Move to directory where script is located" -ForegroundColor DarkCyan;
Pause;
# Change directory naar map waar script wordt bewaard
$directory = Get-Location;
Write-Host "Current directory" $directory -ForegroundColor Yellow;
Set-Location C:\Users\klaas\Documents\hogeschool\SEL\Opdracht1;
$directory = Get-Location;
Write-Host "New set directory" $directory -ForegroundColor Yellow;
# Wait until user is ready
Write-Host "Press a key to move to the next step: Run the script to install software" -ForegroundColor DarkCyan;
PAUSE;
# Start installation script
Write-Host "Start script Installatie.ps1" -ForegroundColor Yellow;
.\Installatie.ps1;
Write-Host "End script Opdracht1.ps1" -ForegroundColor Green;