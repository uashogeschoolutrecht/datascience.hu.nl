---
layout: default
title: Koppelen met HU Research Drive via map
parent: Hoe gebruik ik Research Cloud
grand_parent: Research Cloud
nav_order: 3
---

## Koppelen met HU Research Drive
Bij het verwijderen van een workspace blijft niets achter. Ook geen data. [Eerder]({{ site.baseurl }}{% link _docs/Research Cloud/Hoe gebruik ik Research Cloud/Workspace.md %}) zagen we (onder het kopje 'Storage') hoe we externe opslag kunnen toevoegen aan de workspace om data te behouden.  

Het is ook mogelijk om HU Research Drive te koppelen aan een collaboration in Research Cloud zodat je toegang hebt tot al je (gedeelde) onderzoeksdata op iedere workspace die je start onder de collaboration.

### Research Drive koppelen aan een collaboration in Research Cloud
Het koppelen van Research Drive aan een collaboration in Research Cloud doe je in twee stappen:
1. Als eerste maak je een link aan op een folder in HU Research Drive.
2. Vervolgens voer je de link in in Research Cloud.

---

**Stap 1: Aanmaken publieke link naar folder op Research Drive** 

**Let Op:** Waarschijnlijk heb je niet genoeg rechten om stap 1 uit te voeren. Meld je bij een van de [datastewards](https://bibliotheek.hu.nl/onderzoekers/algemeen-en-ontwikkelen-van-onderzoek/ondersteuning-datastewards-team-do-en-software/){:target="_blank"}, om de publieke link aan te laten maken. Een datasteward heeft rechten om de link aan te maken.

-   Login in op HU Research Drive, om daar een publieke link aan te maken.

-   Klik op de `...` rechts van de map die je wilt delen binnen de collaboration, klik daarna op `Details`, om het detailmenu te openen. ![]({{ "/assets/research_drive_link/to_share_folder_open_detail_menu.jpg" | relative_url }})

-   Navigeer in het detailmenu naar `Sharing` -> `Public Links` en klik op de knop `Create public link` ![]({{ "/assets/research_drive_link/create_public_link_sharing.jpg" | relative_url }})

-   Vul bij het veld `Link name` een duidelijk herkenbare naam in, zodat je later weet waarvoor de link wordt gebruikt. Bijvoorbeeld `Gedeeld HU Research Cloud`.

-   Selecteer de rechten op de map, bij voorkeur `Download / View / Upload / Edit`.

-   Bedenk of genereer een goed, veilig wachtwoord en onthoud deze goed.

-   Vul bij `Expiration` een datum in tot wanneer deze link geldig moet zijn. Vul je geen datum is, dan blijft de share altijd geldig.

-   Klik nu op `Share`, waarna de publieke link wordt aangemaakt.
    ![]({{ "/assets/research_drive_link/research_drive_popup_menu.jpg" | relative_url }})
    
-   Kopieer nu de link naar je klembord door op het ![]({{ "/assets/research_drive_link/clipboard_icon.jpg" | relative_url }}) te klikken. (Deze is te vinden in het detailmenu rechts van de net aangemaakte link)

-   Open nu in windows programma `notepad` en/of `kladblok` (windowstoest + R, notepad.exe, enter) en plak hierin de zojuist gekopieerde url. De url ziet er ongeveer zo uit: https://hu.data.surfsara.nl/index.php/s/7vDaVGWk1KwDA. Het einde van de url `7vDaVGWk1KwDA` heb je nodig in de volgende stap en is de gebruikersnaam / username.

[Uitgebreide uitleg hoe je een publieke link aanmaakt vind je in de documentatie van SURF](https://wiki.surfnet.nl/display/RDRIVE/Share+via+a+public+link)


**Stap 2**: 

-   Open het Research Drive link menu bij de collaboration in Research Cloud waar je HU Research Drive aan wilt koppelen:
    - Klik op `Profile` (zit in het menu boven)
    - Open het submenu van de betreffende collaboration door op de regel te klikken
    - Klik op `Storage`
    - Klik op `Research Drive not Linked, click to link` om het popup menu te openen
    ![]({{ "/assets/research_drive_link/open_collaboration_research_drive_link_menu.jpg" | relative_url }})

-   Vul de velden in voor de Research Drive link:
    - Vink uit: `Use SURF Community, non-branded, Research Drive`, zodat het veld eronder ingeschakeld wordt.
    - Vul in bij het veld url: `https://hu.data.surfsara.nl/public.php/webdav`.
    - Vul in bij het veld `set username`, de gebruikersnaam / username uit het kladblok of de gebruikersnaam die je eventueel van de datasteward hebt ontvangen. In ons voorbeeld is dat `7vDaVGWk1KwDA`.
    - Vul in bij het veld `set WebDav app password`, het wachtwoord dat in stap 1 is ingevoerd of het wachtwoord dat door de datasteward is verkregen.
    ![]({{ "/assets/research_drive_link/research_drive_link_popup_menu.jpg" | relative_url }})

-   Klik op `Save` om HU Research Drive te koppelen aan de collaboration.

Vanaf nu is je workspace binnen je collaboration automatisch gekoppeld met HU Research Drive, wijzging worden automatisch gesynchroniseerd.

Uitgebreide uitleg hoe je Research Drive koppelt vind je [in de documentatie van SURF](https://servicedesk.surfsara.nl/wiki/display/WIKI/Connect+Research+Drive).
