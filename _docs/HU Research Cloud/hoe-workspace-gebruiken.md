---
layout: default
title: Workspace gebruiken; toegang met Time Based Password
grand_parent: HU Research Cloud
parent: Hoe gebruik maken van Research Cloud?
nav_order: 5
---

# Workspace gebruiken; toegang met Time Based Password

Voor een volledige uitleg: [docs](https://servicedesk.surfsara.nl/wiki/display/WIKI/Log+in+to+your+workspace)

Het inloggen op een workspace met een Web UI (zoals Jupyter of RStudio) gebeurt bij voorkeur met een Time-Based One Time Password (TOTP). Hiervoor is het nodig om een authenticator te installeren zoals ‘microsoft authenticator’ of ‘Last Pass’. Op deze wijze kan er eenvoudige wijze toegang verleend worden tot de applicatie.

![](/assets/how-workspace-6.png)

Om deze login mogelijkheid te kunnen gebruiken, stel je het tijdgebaseerde wachtwoord in door in te loggen op de Research Cloud portal ([https://portal.live.surfresearchcloud.nl/](https://portal.live.surfresearchcloud.nl/)).

Na het inloggen, klik je rechtsboven op de drop-down naast uw naam op ‘My Profile’.

Wanneer TOTP nog niet ingesteld is, kan er geklikt worden op ‘Time based password not set, click to set’.

Een vereiste is dat een van de genoemde authenticatie apps geïnstalleerd staat op de mobiele telefoon en scan een van de qr-codes vanuit de app zoals omschreven in de stappen.

Het inloggen kan vervolgens door bij een workspace te klikken op:
  
Log in met gebruikersnaam (te vinden onder ‘My profile’) en de tijdelijke zes-cijferige code voor het verstrijken van de tijd om toegang te krijgen tot de applicatie.

## Pauzeren

Klap de workspace uit en klik op ‘pause’ om de omgeving op non-actief te zetten en zo credits te besparen wanneer de omgeving niet gebruikt wordt:

![](/assets/how-workspace-7.png)
 
Op die manier kun je slim omgaan met je credit gebruik, en bijvoorbeeld voor kortere tijd hele grote workspaces aanzetten met veel rekenkracht. 

## Koppelen met HU Research Drive

Zoals gezegd laat een workspace niets achter nadat hij verwijderd is, ook geen data. Eerder zagen we hoe we externe opslag kunnen toevoegen aan de workspace om data te laten bestaan. Maar het is ook mogelijk om HU Research Drive te koppelen aan een collaboration in Research Cloud zodat je toegang hebt tot al je (gedeelde) onderzoeksdata op iedere workspace die je start. 

Uitgebreide uitleg hoe je Research Drive koppelt vind je [hier](https://servicedesk.surfsara.nl/wiki/display/WIKI/Connect+Research+Drive)

Kort gezegd zijn er twee stappen: een link maken in de juiste HU Research Drive en vervolgens die link invoeren in Research Cloud. 

**Stap 1:** De link in HU Research Drive maak je aan door in de drive naar je naam rechtsboven te gaan en daar op settings te klikken. Kies security in het menu aan de linkerkant en scroll naar het WebDAV password gedeelte. Kies een app naam (bv: koppeling research cloud) en klik op create new password. Sla vervolgens goed je gebruikersnaam en wachtwoord op voor stap 2 en ook de link die er iets onder staat: https://hu.data.surfsara.nl/remote.php/nonshib-webdav/

**Stap 2**: 
Ga naar Research Cloud en ga naar de Collaboration waar je de HU Research Drive aan wil koppelen. Klik op de knop “Drive Not Linked, click to link” en voer je username en wachtwoord (bij token) van stap 1 hier in, Vergeet ook niet het vinkje bovenaan uit te vinken en de link van hierboven daar in te vullen.

Vanaf nu is iedere workspace die je start automatisch gekoppeld met HU Research Drive en kun je makkelijk bestanden er af halen en er weer op terug zetten. 
