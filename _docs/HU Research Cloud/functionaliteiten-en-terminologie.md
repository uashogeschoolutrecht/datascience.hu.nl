---
layout: default
title: Toelichting functionaliteiten en terminologie
grand_parent: HU Research Cloud
parent: Waarom gebruik maken van Research Cloud?
nav_order: 1
---

# Toelichting functionaliteiten en terminologie

## Workspace

Binnen de HU Research Cloud portaal: [https://portal.live.surfresearchcloud.nl](https://portal.live.surfresearchcloud.nl/) vind je de verschillende **workspaces** die door het team zijn aangemaakt. Een workspace kan het best aanschouwt worden als een eigen Virtual Machine (VM) of applicatie.

In HU Research Cloud kan je eenvoudig een voorgeconfigureerde workspace selecteren uit een door ons samengestelde en geteste catalogus. Op dit moment zijn bijvoorbeeld *JupyterHub* en *RStudio Server* beschikbaar en direct klaar voor gebruik. Wanneer een team specifieke eisen heeft, kan ook een eigen catalogus item worden gemaakt. Houd ook hier rekening mee met een week tot meerder weken doorlooptijd. Afhankelijk van het soort aanvraag.

Wanneer er een workspace draait, verkrijg je eenvoudig toegang tot de workspace via HU Research Cloud portaal (of via SSH). Een workspace dient altijd gekoppeld te worden aan een **collaborative organisation**. Hierin beheer je wie er toegang krijgt tot een workspace, ofwel wie er kan inloggen tot het systeem. Deze toegang beheert je in **SRAM**, zie **SRAM/Collaborations** ([https://sram.surf.nl/collaborations](https://sram.surf.nl/collaborations)). Het is te adviseren om altijd iemand van team Digitale Onderzoeksomgeving toegang te geven tot jouw collaboratie, zodat zij kunnen meekijken. 

Iedere workspace die wordt opgestart verbruikt rekenkracht. Er zijn verschillende configuraties te kiezen zoals veel CPU's of extra GPU-kracht. Afhankelijk van de configuratie heeft de workspace een bepaald verbruik in **credits** per uur dat de machine draait. Het is daarom noodzakelijk om een **wallet** te koppelen met beschikbare credits.

## Wallet

Op HU Research Cloud representeert een wallet het creditbudget dat een gebruiker kan spenderen aan het draaien van de werkomgevingen.

Een wallet wordt gefinancierd door een contract dat met SURF kan worden aangegaan. Dit kan de vorm hebben van een NWO-honorering (meer informatie: [https://www.surf.nl/onderzoek-ict/toegang-tot-rekendiensten-aanvragen](https://www.surf.nl/onderzoek-ict/toegang-tot-rekendiensten-aanvragen)) of anderzijds een contract met SURF zelf. Je kan hiervoor een e-infra aanvraag indienen (zie hieronder). 

## E-infra

Via een [e-infra aanvraag](https://www.surf.nl/onderzoek-ict/toegang-tot-rekendiensten-aanvragen) kan een *contract* worden afgesloten met SURF ten behoeve van een budget om een workspaces te starten. 

Wanneer je e-infra aanvraag compleet is en gehonoreerd, kan je de verkregen **contract ID** koppelen aan een wallet binnen Research Cloud.

Een wallet kan meerdere budgetten bevatten. Ieder budget is gekoppeld aan een “contract” met een bepaalde geldigheidsduur. Je kan meerdere wallets hebben. Deze zijn doorgaans bedoeld voor verschillende projecten. Als je meerdere wallets beschikbaar hebt, kan je kiezen welke je koppelt aan een workspace die je aanmaakt.

Ter illustratie hieronder 1 wallet (Communal project …) met 2 budgetten (dus twee verschillende contracten):

![](/assets/e-infra-wallet.png)

Het is belangrijk om onderscheid te maken tussen toegangsbeheer (via SRAM -> Collaboration) en financiën/budget (via e-infra -> contract <- wallet). 
 
**Voor een stap-voor-stap toelichting, bekijk: “Indienen e-infra aanvraag” verder in dit document.**

Om gebruik te kunnen maken van HU Research Cloud kan er een E-infra 
worden ingediend bij SURF. Iedere onderzoeker kan één aanvraag per jaar doen en de *geldigheid van deze aanvraag is 1 jaar. Voor een onderzoek van 4 jaar dien je dus ieder jaar een aanvraag in*. Dit is slechts nodig voor de hoofdaanvrager.

### Voor wie: 
*Alleen voor de hoofdaanvrager, onderzoekers/developers die gebruik gaan maken van de servers hoeven dat niet te doen.* 

Als de aanvrager geen vast dienstverband heeft bij de instelling, dient de aanvraag digitaal te worden ondertekend door een verantwoordelijk wetenschappelijk begeleider met een vaste aanstelling. Hiermee verklaart de begeleider zich garant te stellen voor de verantwoording van toegekende rekentijd, opslag en support. Deze wetenschappelijk begeleider, supervisor, mag voor meerdere aanvragers garant staan. Iedere aanvrager kan per kalenderjaar één aanvraag per soort pilot indienen.

Voorbeeld: als een onderzoeker voor twee onderzoeksprojecten werkt, die beide HU Research Cloud nodig hebben, kan deze onderzoeker alleen voor een van deze projecten een pilotaanvraag indienen voor HU Research Cloud. Voor het andere project moet iemand anders de aanvraag indienen.

### Wallet:
Is persoonlijk. Moet iedere gebruiker aanvragen na eerste keer inloggen. Dit dient dan gekoppeld te worden aan een contract.

### Hoe lang duurt het: 
Binnen 1 à 2 weken na het indienen van je aanvraag, kun je toegang tot onze systemen hebben.

### Wat willen we voor de meeste onderzoekers:
Maximaal 50.000 CPU core-uren cloudcomputing op HU Research Cloud (onderliggende technologie is HPC Cloud) (inclusief max. 2TB opslag, 4 uur support, indien nodig max. 50TB offline tapestorage, Research Drive - via SURF (max 5 TB) of via instelling)

Research Drive hoeft niet aangevraagd te worden omdat de HU een eigen versie van Research Drive heeft, aan te vragen via: [HU Research Drive](https://hogeschoolutrecht.topdesk.net/tas/public/ssp/content/serviceflow?unid=6e876d3737c44e7ba79ed960bf1f7bc5)

### Snellius: de Nationale Supercomputer
Indien de huidige systemen niet snel genoeg zijn voor jouw specifieke data analyse activiteiten, dan kan je ook gebruik maken de Nationale Supercomputer Snellius. [Vraag hier dan toegang aan](https://www.surf.nl/onderzoek-ict/toegang-tot-rekendiensten-aanvragen). 

**Voor meer informatie omtrent de e-infra aanvraag:**
EN: [https://www.surf.nl/en/research-ict/apply-for-access-to-compute-services](https://www.surf.nl/en/research-ict/apply-for-access-to-compute-services)
NL: [https://www.surf.nl/onderzoek-ict/toegang-tot-rekendiensten-aanvragen](https://www.surf.nl/onderzoek-ict/toegang-tot-rekendiensten-aanvragen)

Bekijk de stap-voor-stap instructie verder in dit document voor meer informatie of het aanvraagproces.

## SRAM/Collaborations

Met SURF Research Access Management [(SRAM)](https://sram.surf.nl/collaborations) krijgen leden van onderzoekssamenwerkingen snel en veilig toegang tot onderzoeksdiensten. Geen telefoontjes, e-mails of nul-urencontracten meer: de dienst zorgt ervoor dat onderzoekers snel accounts hebben voor de diensten die ze nodig hebben voor hun onderzoek.

Een onderzoekssamenwerking kan in SRAM met enkele klikken een team opzetten, leden uitnodigen en onderzoeksdiensten koppelen. SRAM zorgt dan automatisch dat accounts worden aangemaakt in de gekoppelde onderzoeksdiensten. Onderzoekers van deze onderzoekssamenwerking kunnen vervolgens met hun instellingsaccount eenvoudig en veilig inloggen bij de gekoppelde onderzoeksdiensten. Hieronder per doelgroep een toelichting.

Binnen het **‘SURF Research Access Management (SRAM)’** portaal kunt u eenvoudig verschillende **‘Collaborations’** aanmaken en beheren. Dit heeft voornamelijk betrekking op **toegangsbeheer** omtrent een **'workspace’** en staat los van budget of contracten.

### Voor (beheerders van) onderzoekssamenwerkingen
Onderzoekssamenwerkingen kunnen met SRAM:
•	eenvoudig het onderzoeksteam beheren
•	onderzoekers betrekken van binnen en buiten Nederland, en van zowel instellingen als van bedrijven, overheid etc.
•	beheren welke onderzoeksdiensten gebruikt kunnen worden door hun teamleden
•	teamleden aan groepen binnen de CO **(Collaborative Organization/Collaboration)** toevoegen (b.v. voor autorisatie in gekoppelde onderzoeksdiensten)
•	zien wie welke toegang wanneer heeft toegekend

### Voor onderzoekers
Onderzoekers die aan een onderzoekssamenwerking deelnemen en toegang moeten krijgen tot systemen, ontvangen een uitnodiging om lid te worden van de onderzoekssamenwerking. Zodra ze de uitnodiging hebben aanvaard en ingelogd zijn, worden automatisch accounts aangemaakt in de systemen waar de CO toegang toe heeft en kan de onderzoeker met de systemen werken. Onderzoekers kunnen:
•	inloggen met hun instellingsaccount
•	gebruik maken van één van de gast-account-opties om in te loggen op de SRAM-omgeving
•	hun profiel beheren, zoals zien tot welke diensten ze toegang hebben en SSH-keys uploaden om die eenvoudig en automatisch te synchroniseren op alle betreffende systemen
•	snel toegang krijgen tot diensten die ze nodig hebben voor hun onderzoek(en)

De collaboratie wordt beheerd door de leider van het onderzoek. Indien ondersteuning vanuit Team Digitale Onderzoeksomgeving gewenst is, bijvoorbeeld in de vorm van installeren plug-ins, etc. voeg dan onze Rins Rutgers [(rins.rutgers@hu.nl)](mailto:rins.rutgers@hu.nl) toe als admin. Standaard hebben wij geen toegang tot jouw machines.