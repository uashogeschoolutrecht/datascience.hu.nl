---
layout: default
title: Workspace
grand_parent: HU Research Cloud
parent: Hoe gebruik maken van Research Cloud?
nav_order: 4
---

# Workspace

## Workspace aanmaken

Bezoek de HU Research Cloud portal: [https://portal.live.surfresearchcloud.nl/](https://portal.live.surfresearchcloud.nl/)
Login en klik op ‘Create New’ onder ‘create new workspace’ of het plusteken.

![](/assets/how-workspace-1.png)

### STAP 1, Application
Kies een voorgeconfigureerde workspace, zoals **HU JupyterHub**.

![](/assets/how-workspace-2.png)

En klik ‘choose’.

Klik rechts onder op ‘continue’.

Scroll het scherm naar beneden wanneer deze knop niet te zien is.

### STAP 2, Collaborative organisation

Kies de collaborative organisation waar de leden in zitten die toegang moeten hebben tot deze workspace.

### STAP 3, Dataset(s)
Datasets zijn nog onvoldoende uitgewerkt. Kies hier voor niets. 

### STAP 4, Cloud provider
*1. Choose one of the available wallets*
Selecteer 1 van de beschikbare wallets. Wanneer er slechts 1 wallet beschikbaar is, zal deze automatisch geselecteerd zijn.

*2. Choose the cloud provider that best fits your needs*
Onze default Cloud provider is **SURF HPC Cloud**
Voorheen werd deze naam gebruikt voor de oudere omgeving. Dit is de onderliggende technologie van HU Research Cloud. 

*3. Choose the flavour of the cloud provider*
Kies hier een geschikte machine, maar ga niet helemaal over de top wanneer het niet nodig is. Extra informatie qua credit verbruik kan worden verkregen door op de ‘dropdown’ te klikken.

**Options**
Hier kunnen ‘storage’ en een IP-adres worden gekoppeld.

Wanneer het nodig is om een van deze te koppelen, maak in het dashboard van Research Cloud (waar ook de workspace aangemaakt kon worden) ‘storage’ of een ‘floating IP’ aan. Klik hiervoor op het plusteken onder het juiste kopje.:

![](/assets/how-workspace-3.png)

**Storage**

Alle lokale opslag van een workspace is weg als de workspace wordt verwijderd. Om te zorgen dat data beschikbaar blijft binnen Research Cloud kun je ‘persistent storage’ aanmaken:

![](/assets/how-workspace-4.png)

Deze opslag kun je zien als een soort digitale usb stick die je kunt koppelen aan een workspace. Meer informatie en waar het voor geschikt is, hoe je het kunt benaderen kun je vinden op de [docs](https://servicedesk.surfsara.nl/wiki/display/WIKI/SURF+HPC+Storage). Extra informatie hoe je het kunt vinden vanuit Rstudio of JupyterHUB vind je verderop in het document. LINK

**IP**
Je kunt een IP-adres reserveren in Research Cloud, deze kun je vervolgens bij het aanmaken van een workspace koppelen. Dit is handig als je een dienst wil aanbieden op het internet. Meer informatie is te vinden in de [docs](https://servicedesk.surfsara.nl/wiki/display/WIKI/Floating+IP)

**Name**

De ingestelde ‘expiration date’ bepaalt wanneer de workspace/machine automatisch wordt verwijderd. Wanneer dit niet wenselijk is, zet een datum in de verre toekomst.

![](/assets/how-workspace-5.png)

Geef een duidelijke naam en omschrijving op zodat collega's in een oogopslag weten wat het inhoudt. De gekozen naam kan publiek toegankelijk zijn, in de vorm van de de URL in browser. Wees zorgvuldig in welke naam je kiest. 

Lees de ‘terms & conditions’ en zet een vinkje bij akkoord.

**LET OP!** Default gedrag is dat een machine verwijderd wordt na het verstrijken van de tijdsduur. Moet de workspace een lange tijd blijven draaien of zijn er handmatig aanpassingen gedaan binnen de reeds aangemaakte workspace -> zet ver in de toekomst.




