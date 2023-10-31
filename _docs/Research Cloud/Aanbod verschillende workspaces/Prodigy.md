---
layout: default
title: Implementatie Prodigy
parent: Aanbod workspaces van de HU op Research Cloud
grand_parent: Research Cloud
---

## Implementatie van de Prodigy applicatie

### Beschrijving 

Prodigy is een interactief en modern annotatiehulpmiddel dat is ontwikkeld om professionals en onderzoekers te ondersteunen bij het efficiënt verzamelen van gegevens. Het heeft een gebruiksvriendelijke interface die afgestemd kan worden op diverse annotatietaken, wat het proces van dataverzameling vereenvoudigt en toegankelijker maakt.

Dit catalogusitem stelt gebruikers in staat om Prodigy te benaderen en te gebruiken via een specifieke URL.

Bij het bezoeken van deze URL worden gebruikers gevraagd om in te loggen met hun gebruikersnaam en wachtwoord. Na succesvol inloggen wordt hun gebruikersnaam toegevoegd aan de URL als een sessienaam. Hierdoor kan Prodigy herkennen welke gebruiker aan het annoteren is.

Bovendien wordt er dagelijks een reservekopie van de database gemaakt, die vervolgens wordt bewaard in de door jou aangewezen map op de research drive.

Voor een gedetailleerdere beschrijving van het catalogusitem, raadpleeg de [Github-pagina](https://github.com/uashogeschoolutrecht/prodigy_deployment)

### Workspace parameters
Om het catalogusitem __prodigy_deployment__ te gebruiken, dien je enkele parameters in te voeren:

- __http_password & http_username:__ Deze zijn nodig voor het aanmaken van een gebruikersaccount voor een annotator. Later kunnen er nog meer gebruikers worden toegevoegd.
- __prodigy_key:__ Essentieel voor de installatie van Prodigy.
- __rclone_url, rclone_user en rclone_pass:__ Hier vul je je WebDAV-gegevens in. Deze zijn nodig om back-ups van de database naar je Research Drive te sturen. 

Voor meer informatie over hoe je deze WebDAV-gegevens kunt vinden en gebruiken, raadpleeg [Koppelen met HU Research Drive via map](/docs/Research%20Cloud/Hoe%20gebruik%20ik%20Research%20Cloud/HU_Research_Drive_koppelen_map)