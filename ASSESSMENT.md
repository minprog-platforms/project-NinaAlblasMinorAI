# Bijzondere features van de TipsyTimer
* Mensen moeten hun akkoord geven op het lezen van de disclaimers voordat ze met de TipsyTimer kunnen beginnen. Hierdoor verlaag ik mijn risico op aansprakelijkheid, mocht iemand toch volledig vertrouwen op zijn timerresultaat en een auto-ongeluk maken.
* De app kan gebruikt worden op iOS devices met iOS 13 of hoger.
* De app werkt ook op alle type iOS-devices, omdat ik de grootte van de views heb aangepast op de schermgrootte van het gebruikte apparaat.
* Terwijl de gebruiker de gevraagde gegevens invult (leeftijd, geslacht etc.) loopt er bovenaan het scherm een progressiebalk die aangeeft hoe ver de gebruiker is met het invullen van de gegevens.
* Ik ben verder erg trots op de gehele layout van mijn app. Ik vind bijvoorbeeld de circulaire sliders in AgeView en DrinkingTimeView erg mooi en ben erg tevreden met mijn keuze van afbeeldingen en gifjes. Ook zijn alle kleuren helemaal naar eigen invulling en stijl; iedere gebruikte kleur is een custom kleur die door mij gecreëerd is.
* Zodra het resultaat (de tijd die de gebruiker moet wachten voor hij nuchter genoeg is om de weg op te gaan) getoond wordt, begint er een timer te lopen. 
* Als de wachttijd langer is dan 2 uur, verschijnt er een pop up met het nummer van een [nationaal taxibedrijf](https://sneleentaxi.nl/). De gebruiker kan dan op het nummer klikken, waardoor het taxibedrijf ook daadwerkelijk gebeld wordt. Als de gebruiker liever op de timer wacht, of met een BOB meerijdt, kan hij dit ook aangeven. Door deze 3 opties aan te bieden, wil ik de gebruiker op het hart drukken dat dit vrijwel zijn enige opties zijn (of naar huis lopen), om zo te voorkomen dat de gebruiker tóch achter het stuur kruipt - dit is namelijk geen optie.
* Terwijl de timer afloopt, loopt het bierglas op de achtergrond leeg. De snelheid waarmee het bierglas leegloopt hangt af van de tijd die de gebruiker moet wachten; bij een wachttijd van 1 minuut loopt het glas bijvoorbeeld vele malen sneller leeg dan bij een wachttijd van 7 uur. Het bierglas is leeg zodra de timer is afgelopen.
* Terwijl de timer afloopt, verandert de tekstboodschap op het scherm iedere 10 seconden. Deze boodschap wisselt tussen de weergave van de resterende tijd en de tip dat de tijd voorbij is wanneer het bierglas leeg is. Hiermee wil ik mensen wijzen op deze leuke feature van de app.
* De timer loopt ook door wanneer je de app sluit en open laat staan op de achtergrond.
* Wanneer de timer afgelopen is en het bierglas leeg is, verschijnt er een gifje van James Bond die autorijdt en verandert de tekst naar "JE KUNT WEER VEILIG DE WEG OP!". Hiermee wil ik de gebruiker belonen voor zijn geduld en hem een euforisch gevoel bezorgen.
* Wanneer de timer is afgelopen en de gebruiker heeft de app open staan op de achtergrond, verschijnt er een push notificatie inclusief een geluidje. Jammer genoeg werken de notificaties alleen op de simulator - niet op echte iOS devices - omdat ik geen betalende ontwikkelaar ben.

# De grootste keuzes die ik heb gemaakt voor deze app
* Ik heb de DisclaimerView als eerste scherm gekozen zodat gebruikers echt moesten aangeven dat ze de disclaimer hadden gelezen d.m.v. de "AKKOORD"-knop. Eerst had ik deze view alleen als knop op het home-scherm geplaatst met het risico dat gebruikers de disclaimers nooit zouden lezen.
* Andere grote beslissingen betroffen vooral de geschreven code. Ik heb veel code omgeschreven naar enums of functies waardoor de code beter leesbaar en mooier is geworden. 
