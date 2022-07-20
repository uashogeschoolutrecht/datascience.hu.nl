---
layout: default
title: E-infra
grand_parent: HU Research Cloud
parent: Hoe gebruik maken van Research Cloud?
nav_order: 1
---

# E-infra

## Indienen E-infra aanvraag

Niet iedereen binnen een collaboration hoeft een e-infra aanvraag in te dienen, er kunnen namelijk meerdere wallets gekoppeld worden aan 1 contract. Slechts 1 iemand per onderzoek hoeft deze aanvraag in te dienen.

Bezoek: [https://servicedesk.surfsara.nl](https://servicedesk.surfsara.nl/)
Er vindt dan een korte redirect plaats.
Klik op de knop ‘Use your SURFconext account’.

![](/assets/how-e-infra-1.png)

Controleer op het volgende scherm uw persoonsnaam en e-mailadres en klik op de blauwe knop ‘Doorgaan naar Servicedesk SURFsara’.

![](/assets/how-e-infra-2.png)

Klik in het volgende scherm op de knop ‘Small Applications’:

![](/assets/how-e-infra-3.png)

Vul het volgende aanvraagformulier zo volledig mogelijk in:

![](/assets/how-e-infra-4.png)

Het meeste is redelijk vanzelfsprekend. Hier een toelichting op enkele punten.

**ORCID iD**
Dit is een verplicht veld, mocht je nog geen ORCID ID hebben dan kun je dat ter plekke aanvragen. 

**Institute**
Kies voor HBO en Hogeschool Utrecht

**NWO or ZonMW number for project (optional)**
Een toegekende subsidie kan hier worden ingevuld

**Reference number of a previous grant (optional)**
Als je eerder een E-Infra aanvraag hebt gehad kun je hier het nummer invoeren. 

**Scientific project description**
Korte toelichting op het door jouw uitgevoerde onderzoek. 

**Technical project description**
Hier kun je aan SURF uitleggen waarom je de aanvraag nodig hebt in technische termen. Houd er hierbij rekening mee dat een logische beredenering richting het aantal gewenste credits op Research Cloud handig is. Een aantal scenarios:

*Scenario 1*: Je zou kunnen beredeneren dat je bijvoorbeeld 16 uur per week gebruik maakt van Rstudio met 2 CPU’s. Je verbruikt dan 2 credits per uur * 16 uur per week * 52 weken = 1664 credits. 

*Scenario 2*: Je wil grote hoeveelheden data analyseren en wil daarvoor een grote virtuale machine inzetten van 32 CPU’s en 480 GB Ram. Je verbruikt dan 32 credits per uur, dus een dag werken kost dan 32 * 8 = 256 credits. 

*Scenario 3*: Je wil twee webservers 24/7 aanzetten voor dataverzameling. Je kiest hiervoor servers met 1 CPU en verbruikt hiervoor dus: 2 * 24 * 365 = 17520 credits per jaar. En daarnaast wil je nog genoeg credits hebben om je data te analyseren, tel die er dan bij op. 

Mocht je er niet uitkomen, dan kan Team DO hier bij helpen.

**Resources**
Hier kies je HPC Cloud

**HPC Cloud: how much CPU time in core hours? (Max. 50000)**
Hier kies je voor de hoeveelheid credits die je eerder hebt berekend. 

**HPC Cloud: how much GPU time in core hours? (Max. 10000) (optional)**
Mocht je gebruik willen maken van videokaart uren voor bijvoorbeeld deeplearning geef hier dan in hoeveel core uren. 

**HPC Cloud: how much storage in Terabytes for SSD? (Max. 0.2 TB)**
0.1 TB

**HPC Cloud: how much storage in Terabytes for local Ceph images? (Max. 2 TB)**
Hoeveel data wil je opslaan? Je kiest hier een soort externe harde schijf voor je data.

**HPC Cloud: how many consultancy hours? (optional)**
0, team Digitaal Onderzoek zal je ondersteunen.

**Tape – how much offline storage in Terabyte? (Data Archive and/or dCache) (optional)**
De HU heeft voor het archiveren van data andere oplossingen beschikbaar, voor vragen kun je terecht bij de datasteward van jouw kenniscentrum. 

**Research Drive: Do you need storage in Research Drive? (Max. 5 TB) (optional)**
Dit is niet nodig, dus HU heeft een eigen Resarch Drive voor onderzoeksdata.