---
layout: default
title: Koppelen met HU Research Drive
parent: Hoe gebruik ik Research Cloud
grand_parent: Research Cloud
nav_order: 3
---

## Koppelen met HU Research Drive
Bij het verwijderen van een workspace blijft niets achter. Ook geen data. [Eerder]({{ site.baseurl }}{% link _docs/Research Cloud/Hoe gebruik ik Research Cloud/Workspace.md %}) zagen we (onder het kopje 'Storage') hoe we externe opslag kunnen toevoegen aan de workspace om data te laten bestaan.  

Het is ook mogelijk om HU Research Drive te koppelen aan een collaboration in Research Cloud zodat je toegang hebt tot al je (gedeelde) onderzoeksdata op iedere workspace die je start. 

### Research Drive koppelen aan een collaboration in Research Cloud 
Dit kan in twee stappen: een  link maken in de juiste HU Research Drive en vervolgens die link invoeren in Research Cloud. 

**Stap 1:** 

-   De link in HU Research Drive maak je aan door in HU Research Drive naar je naam rechtsboven te gaan en daar op settings te klikken.  

-   Kies security in het menu aan de linkerkant en scroll naar het WebDAV password gedeelte.  

-   Kies een app naam (bv: koppeling research cloud) en klik op create new password.  

-   Sla vervolgens je gebruikersnaam en wachtwoord en de link die er iets onder staat: `https://hu.data.surfsara.nl/remote.php/nonshib-webdav/` op om te gebruiken in stap 2.

**Let Op:** het kan voorkomen dat je meerdere gedeelde mappen in je hoofdmap hebt bij HU Research Drive. Als je bovenstaande URL gebruikt zal iedereen in de Collaboration toegang hebben tot al jouw mappen van HU Research Drive. Om dit te voorkomen gebruik je de mapnaam van de projectfolder na de URL, als de map die je wilt gebruiken projectmapvoorbeeld heet wordt dit dan: `https://hu.data.surfsara.nl/remote.php/nonshib-webdav/projectmapvoorbeeld`. Op die manier wordt alleen die map gekoppeld met de workspaces die je start.

**Stap 2**: 

-   Ga naar de Collaboration in Research Cloud waar je de HU Research Drive aan wil koppelen.  

-   Klik op de knop “Drive Not Linked, click to link”.

-   Voer je username en wachtwoord (bij token) van stap 1 hierin.

-   Het vinkje bovenaan uitvinken. Kopieer de link, genoemd onder stap 1, met de map naam van de project folder die je wilt koppelen, hierin.

Vanaf nu is je workspace binnen je collaboration automatisch gekoppeld met HU Research Drive en kun je bestanden er af halen en er weer op terug zetten. 

Uitgebreide uitleg hoe je Research Drive koppelt vind je [in de documentatie van SURF](https://servicedesk.surfsara.nl/wiki/display/WIKI/Connect+Research+Drive).
