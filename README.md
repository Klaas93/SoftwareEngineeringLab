# SoftwareEngineeringLab

## Branch: Opdracht1
De opdracht was om een script te schrijven om automatisch bepaalde software te installeren.  
Ik heb er 2 scripts van gemaakt, 1 die de opdrachten uit het Word-bestand uivoert en 1 die de software installeert.

### Opdracht1.ps1
Dit is het script dat de opdrachten uitvoert in PowerShell (dus enkel voor Windows).
Tussen ieder opdracht staat het commando `PAUSE`.  
Dit houdt het script on-hold totdat de gebruiker op een toets heeft geduwd voordat het naar de volgende stap gaat.

#### Verloop van het script
De eerste opdracht is een print 'Hello World'.

Daarna een Change Directory. In de cursus staat er om `cd` te gebruiken.  
Dit is echter een alias van `Set-Location`, die door PowerShell gebruikt wordt.  
Als je `alias cd` typt in PS, dan zie je hoe de alias gebruikt wordt.  
Daarom dat ik Set-Location heb gebruikt in het script.  
  
:warning: **Set-Location**: Het path is hardcoded, dit staat dus momenteel op het path met <b>mijn folderstructuur</b>!  
Deze moet dus eerst aangepast worden (R 15)

Om aan te tonen dat de directory gewijzigd is, heb ik eerst de huidige directory opgevraagd met `Get-Location` en in een variabele geplaatst om te kunnen printen.

Daarna opent het script installatie.ps1

Ten laatste wordt nog aangetoond dat het script wordt beëindigd.

### Installatie.ps1
Dit is het script dat de installatie van software uitvoert in PowerShell (dus enkel voor Windows) met chocolatey.

In de cursus wordt er gevraagd om de applicaties onder te verdelen in aparte rubrieken en de rubrieken te printen tijdens de installatie.  
Ik vond het nogal onlogisch om enkel de onderverdelingen te splitsen in het printen.  
Daarom heb ik het script aangepast zodat er effectief ook kan gekozen worden om bepaalde rubrieken niet te installeren, wat meer vrijheid geeft aan de gebruiker.  

#### Verloop van de functie

Per rubriek wordt er een vast verloop doorlopen.  
Eerst wordt er een titel geprint om aan te tonen welke rubriek er wordt behandeld en welke software er geïnstalleerd zal worden.  
Daarna krijgt de gebruiker de optie om deze rubriek over te slaan.  

:warning: **opties**: De opties kunnen enkel `y` of `n` zijn, `yes` en `no` werken helaas niet.  

Op het einde wordt er nog geprint dat het script is afgerond.  

#### Rubriek: Software for Common Use
Deze staan opgelijst in het opdracht document.  
Dit installeert Firefox, Visual Studio Code, Adobe Acrobat Reader, Github Desktop, VLC Media Player

#### Rubriek: Software for SEL
Dit installeert software speficiek voor SEL.  
De geïnstalleerde software is: FileZilla, Virtual Box, MySQL Workbench

#### Rubriek: Software for Personal Use  
Dit installeert zelf gekozen software.  
Ik heb voor mezelf gekozen om nog Fork en IntelliJ Community Edition te installeren.  
