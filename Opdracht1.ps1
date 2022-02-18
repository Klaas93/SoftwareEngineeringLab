# Automatiseren software-installatie

# Vragen
#
# De PowerShell-prompt toont de map waar we ons nu bevinden. Wat is de naam van deze directory?
# ==> C:\WINDOWS\System32
#
# In welke map heb je het script bewaard?
# ==> C:\Users\klaas\Documents\hogeschool\SEL\Opdracht1
#
# In welke map is het script bewaard in screenshot in Figuur 4?
# ==> D:\Users\BertVV\Documents\HoGent\SELab\
#
# Commands:
# Lijst tonen van software geïnstalleerd door chocolatey
# ==> choco list --local-only
# Alle geïnstalleerd packages bijwerken naar laatste versie
# ==> choco upgrade all
# Via console package opzoeken
# ==> choco search {package}
# Een geïnstalleerd programma verwijderen
# ==> choco uninstall {package}

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
Write-Host "Start script InstallSoftware.ps1" -ForegroundColor Yellow;
.\InstallSoftware.ps1;
Write-Host "End script Installatie.ps1" -ForegroundColor Green;