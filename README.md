# project-NinaAlblasMinorAI
project-NinaAlblasMinorAI created by GitHub Classroom

### Cocktailmaker
Je kent het wel: je zit op de bank en krijgt ineens trek in een cocktail. Maar de slijterij is net dichtgegaan, of je hebt simpelweg geen zin om naar buiten te gaan. Je zult deze lekkere trek moeten lessen met de ingrediënten uit de koelkast en de sterke drank die in de kast staat. Maar je hebt geen idee welke cocktails je met deze ingrediënten zou kunnen maken. (En je wil wel alle ingrediënten gebruiken die je in huis hebt)

### Nuchter op de weg
Ieder jaar stijgt het aantal ongelukken waarbij alcohol in het spel is ([NOS, 2019](https://nos.nl/artikel/2308458-zorgwekkende-toename-aantal-verkeersdoden-door-alcohol-meer-dan-verdubbeld)) en uit zeer recent onderzoek ([SWOV, 2022](https://swov.nl/nl/nieuws/nederlandse-weggebruikers-europees-perspectief-resultaten-van-het-esra2-onderzoek)) blijkt dat 9,1% van de Nederlandse automobilisten met te veel alcohol op achter het stuur stapt. Mensen gaan er vaak onjuist vanuit dat 'die paar drankjes' niet uitmaken, dat de alcohol in hun bloed inmiddels wel afgebroken zal zijn, of dat een kopje koffie ontnuchtert. Deze foutieve aannames kunnen fatale gevolgen hebben.

Deze applicatie zal het aantal beschonken bestuurders helpen verminderen doordat ze de gebruiker aan de hand van zijn lengte, gewicht en de genuttigde hoeveelheid standaardglazen toont hoe lang hij nog moet wachten tot de alcohol in zijn bloed is afgebroken en hij weer veilig de weg op kan.



- Beginnend bestuurder: 0.2 %0
- Ervaren bestuurder: 0.5 %0
- Geef je lengte en gewicht in (en andere factoren die alcoholafbreking beïnvloeden)
- Hoeveelheid standaardglazen (in ml, wordt omgerekend naar standaardglazen)
- Geeft je de tijd waarna alle alcohol uit je lichaam is afgebroken (a.d.h.v. een animatie v.e. leegdrinkend glaasje)
- Timer blijft lopen ook als je app sluit
- Geeft notificatie als de timer afgelopen is
- Window met factoren die alcoholafbreking beïnvloeden en uitleg
- "The Tipsy Timer tells you how long it takes for you to be sober again."
- Hulp: Beer contains about 4.5% to 6% vol.% alc., Wine contains about 9% to 13% vol.% alc.

Alcohol promillage formule = [# * 10 g – a * t] / ( kg * f)
* # = het aantal glazen met alcohol dat je drinkt
* a = de factor voor het afbreken van alcohol, op basis van jouw gewicht en geslacht = 0,002 x kg^2 x f
* t = de tijd die er nodig is om de alcohol in je bloed op te nemen (aangepast voor voeding die je eet)
* kg = jouw gewicht in kilo
* f = de factor die rekening houdt met of je een man of een vrouw bent

* Man van 85 kilogram: 0,002 * 85^2 * 0,72 = 10,40 g/uur aan afbraaksnelheid
Man = [6 * 10 – 10,40 * (2,5-0,5)] / [85 * 0,72] = 39,20 g / 61,20 kg = 0,641 ‰
* Vrouw van 64 kilogram: 0,002 * 64^2 * 0,61 = 5,00 g/uur aan afbraaksnelheid
Vrouw = [3 * 10 – 5,00 * (2,5-0,5)] / [64 * 0,61] = 20,00 g / 39,04 kg = 0,512 ‰

BAG (a x 10)/(g x r) – (u – 0,5) x (g x 0,002)
* a = aantal glazen
* g = lichaamsgewicht
* r = bij mannen 0,7 en bij vrouwen 0,5
* u = het aantal uren vanaf het eerste glas

<!-- afbraaksnelheid = 0,002 x kg x kg x f
* kg = het gewicht van de persoon;
* f = factor afhankelijk van geslacht: man = 0,71 en vrouw = 0,62. -->


Disclaimers
* 18+
* Eigen risico, niet aansprakelijk
* Niet volledig vertrouwen op deze applicatie
* Andere factoren spelen mee (drugs- of medicijngebruik, voeding en fysieke conditie)
* Rijden onder invloed is gevaarlijk voor jezelf en anderen. Breng anderen en jezelf niet in gevaar. Don't drink and drive!
* Rijden onder invloed kan fatale gevolgen hebben.
* Drink met mate, alcohol is slecht voor je

"No online BAC Calculator should be used to determine an individuals fitness to drive. There are so many variables and factors that can affect a specific individuals BAC level at any given time that the only fail-safe and reliable way to calculate an individuals blood alcohol level at a precise moment in time is by blood analysis or a reliable and type approved breathalyser. This BAC calculator provides reliable estimates based on average biological values and scientific research and should be used for educational, research and information purposes only. If in doubt, use common sense and do not drive."

"Met deze promillage-calculator bereken je je bloedalcoholgehalte (BAG). Deze calculator geeft alleen een schatting en mag niet worden gebruikt om te bepalen of je nog mag autorijden!"
