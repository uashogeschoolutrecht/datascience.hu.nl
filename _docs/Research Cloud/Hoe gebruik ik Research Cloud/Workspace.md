---
layout: default
title: Workspace
parent: Hoe gebruik ik Research Cloud
grand_parent: Research Cloud
nav_order: 1
---

## Workspace
Een workspace kan het best beschouwd worden als een eigen virtuele machine (VM) of applicatie (virtuele onderzoeksomgeving). 

Team Digitale Onderzoeksomgeving biedt de onderzoeker voor geconfigureerde workspaces die als gebruiksklare softwareoplossing te gebruiken zijn. Binnen het Research Cloud [portaal](https://portal.live.surfresearchcloud.nl) vind je de verschillende workspaces die door de HU beschikbaar worden gesteld.

### Workspace aanmaken

Ga naar Research Cloud portal: [https://portal.live.surfresearchcloud.nl/](https://portal.live.surfresearchcloud.nl/)
Login en klik op ‘Create New’ onder ‘Create new workspace’ of het plusteken.

![](/assets/how-workspace-1.png)

#### STAP 1, Application
Kies een voorgeconfigureerde workspace, zoals bijv. **HU JupyterHub**.

![]({{ "/assets/how-workspace-2.png" | relative_url }})

- Klik op ‘CHOOSE’.

- Klik rechts onder op ‘continue’ (scroll het scherm naar beneden wanneer deze knop niet te zien is).

#### STAP 2, Collaborative organisation

Kies de collaborative organisation waar de leden in zitten die toegang moeten hebben tot deze workspace.

#### STAP 3, Dataset(s)
Datasets zijn nog onvoldoende uitgewerkt. Kies hier voor niets. 

#### STAP 4, Cloud provider
*1. Choose one of the available wallets*:
selecteer 1 van de beschikbare wallets. Wanneer er slechts 1 wallet beschikbaar is, is deze automatisch geselecteerd.

*2. Choose the cloud provider that best fits your needs*:
kies de default Cloud provider **SURF HPC Cloud**.

*3. Choose the flavour of the cloud provider*:
kies hier een geschikte machine, maar ga niet helemaal over de top wanneer het niet nodig is. Extra informatie qua credit verbruik kan worden verkregen door op de ‘dropdown’ te klikken.

#### STAP 5, Options
Hier kunnen ‘storage’ en een 'IP-adres' worden gekoppeld.

Wanneer het nodig is om een van deze te koppelen, maak in het dashboard van Research Cloud (waar ook de workspace aangemaakt kon worden) ‘storage’ of een ‘floating IP’ aan. Klik hiervoor op het plusteken onder het juiste kopje:

![]({{ "/assets/how-workspace-3.png" | relative_url }})

-   **Storage**

    Alle lokale opslag van een workspace is weg als de workspace wordt verwijderd. Om te zorgen dat data beschikbaar blijft binnen Research Cloud kun je ‘persistent storage’ aanmaken:

    ![]({{ "/assets/how-workspace-4.png" | relative_url }})

    Deze opslag kun je zien als een soort digitale usb stick die je kunt koppelen aan een workspace. Deze opslag maak je aan voordat je een workspace start. Tijdens het starten van een workspace koppel je de opslag. Meer informatie hierover is te vinden in de [documentatie van SURF](https://servicedesk.surfsara.nl/wiki/display/WIKI/SURF+HPC+Storage). 

-   **Floating IP**

    Je kunt een IP-adres reserveren in Research Cloud, deze kun je vervolgens bij het aanmaken van een workspace koppelen. Dit is handig als je een dienst wil aanbieden op het internet. Meer informatie is te vinden in de [documentatie van SURF](https://servicedesk.surf.nl/wiki/display/WIKI/Reserved+IP)

#### STAP 6, Name

- **Choose the expiration date of the machine:**
de ingestelde ‘expiration date’ bepaalt wanneer de workspace/machine automatisch wordt verwijderd. Moet de workspace een lange tijd blijven aanstaan zet de expiration date dan ver in de toekomst. 

-   **Workspace name, domain name and description:**
geef een duidelijke naam en omschrijving aan je worspace zodat collega’s in een oogopslag weten wat het inhoudt. De gekozen naam kan publiek toegankelijk zijn, in de vorm van de URL in browser. Wees zorgvuldig in welke naam je kiest.

-   **Workspace parameters:**
deze parameters zijn per soort workspace verschillend, kijk bij de beschrijving van de verschillende workspaces wat hier ingevuld moet worden.

-   **Terms and conditions:**
lees de ‘Terms & conditions’ en zet een vinkje bij akkoord.




