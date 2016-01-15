# Aufgabenblatt 10
## IE-Textanalyse
*Sehen Sie folgenden [Text](vw.txt) an und beantworten Sie die folgenden Fragen:*
* *Welche Entitäten treten auf? Geben Sie Beispiele für Entitäten und ihre Eigenschaften an.*

  * Automesse --> Skyline
  * Detroit, Detroit-Suburbia --> Skyline, Dachlandschaften, verzierten Ornamenten, Häusermix, Ruinen
  * Matthias Müller --> Porsche-Chef, Sportwagen-Conférencier, VW-Mann, VW-Chef
  * VW --> Januar 2016, Konzern, Normalität, Krise
  * US-Justizministerium --> Klage, Schadenersatz, Sammelklagen

* *Welche Beziehungen bestehen zwischen den Entitäten?*

  * US-Regierung klagt
  * VW-Image ist ramponiert
  * US-Justizministerium hat eingereicht
  * Automesse zeigt sich

* *Welche Scenario-Templates lassen sich beschreiben (je Dokument mind. 2 Templates)?*

  * <Detroit> zeigt sich mit <Ansicht>
  * <Matthias Müller> ist <Position>

---
## IE-Textanalyse (2)
*Sehen Sie folgenden [Text](china.txt) an und beantworten Sie die folgenden Fragen:*
* *Welche Entitäten treten auf? Geben Sie Beispiele für Entitäten und ihre Eigenschaften an.*

  * Chinas Börse
  * Chinas Wirtschaftsleistung
  * Schuster -> Leisten, Leder, Stiefel
  * China -> Überproduktion, Arbeitskosten, Produktionskonkurrenten, Immobilien-Blase, Plagen

* *Welche Beziehungen bestehen zwischen den Entitäten?*

* Chinas Börse -> sind nicht, kracht
* Chinas Wirtschaftsleistung -> sind nicht, geht in die Knie
* Schuster -> nimmt, schneidet zu
* China -> kommt über

* *Welche Scenario-Templates lassen sich beschreiben (je Dokument mind. 2 Templates)?*

  * ``<China> überkommt <Plagen>``
  * ``<Schuster> arbeitet mit <Materialien>``

---
## NLTK Part-of-Speech Tagging
In der Vorlesung haben Sie das Python-Toolkit [NLTK](http://www.nltk.org) kennengelernt. In den folgenden Übungsaufgaben wollen wir uns dieses Toolkit in der Praxis etwas näher anschauen. Wenn Sie Python nicht auf Ihrem Rechner installieren möchten, können Sie die Übungsaufgaben online mit [pythonanywhere.com](https://www.pythonanywhere.com) bearbeiten. Auf der NLTK-Webseite finden Sie auch ein frei verfügbares [Buch](http://www.nltk.org/book_1ed/), dass Ihnen beim Umgang mit NLTK hilft.

*Wenden Sie die Methode nltk.pos_tag() auf einen englischen Text Ihrer Wahl mit mindestens fünf Sätzen an. Analysieren Sie das Ergebnis: Welche POS-Zuordnungen sind fehlerhaft? Sie können sich mit*

``nltk.help.upenn_tagset('TAG')``

*über die die Bedeutung eines POS-Tags 'TAG' informieren. Dabei sind auch reguläre Ausdrücke möglich wie in*

``nltk.help.upenn_tagset(’NN.*’)``

Text:
`Hey guys.. I know we haven't been updating and it's for quite a reason. There are tons of updates I want to share with you guys, and we will do so in the next 1-2 days.  I just got back from CES after a whopping 10+ days in Vegas (I had meetings prior and after CES)
I'm going to do a quick overview of CES and what happened the entire week...
For those that don't know what CES is, it is the Consumer Electronics Show, held once a year usually on the first week of January in Las Vegas and is the largest consumer products show in the world.  This year, a lot of of products and companies revolved around IoT (Internet of Things) and Virtual Reality and Automation.
Did you know.. a lot of whats listed below can eventually be doable with the PINE64? Super psyched!`

Output:
[('Hey', 'NNP'), ('guys..', 'VBP'), ('I', 'PRP'), ('know', 'VBP'), ('we', 'PRP'), ('have', 'VBP'), ("n't", 'RB'), ('been', 'VBN'), ('updating', 'VBG'), ('and', 'CC'), ('it', 'PRP'), ("'s", 'VBZ'), ('for', 'IN'), ('quite', 'RB'), ('a', 'DT'), ('reason', 'NN'), ('.', '.'), ('There', 'EX'), ('are', 'VBP'), ('tons', 'NNS'), ('of', 'IN'), ('updates', 'NNS'), ('I', 'PRP'), ('want', 'VBP'), ('to', 'TO'), ('share', 'NN'), ('wit', 'NN'), ('you', 'PRP'), ('guys', 'VBP'), (',', ','), ('and', 'CC'), ('we', 'PRP'), ('will', 'MD'), ('do', 'VB'), ('so', 'RB'), ('in', 'IN'), ('the', 'DT'), ('next', 'JJ'), ('1-2', 'JJ'), ('days', 'NNS'), ('.', '.'), ('I', 'PRP'), ('just', 'RB'), ('got', 'VBD'), ('back', 'RB'), ('from', 'IN'), ('CES', 'NNP'), ('after', 'IN'), ('a', 'DT'), ('whopping', 'JJ'), ('10+', 'CD'), ('days', 'NNS'), ('in', 'IN'), ('Vegas', 'NNP'), ('(', '('), ('I', 'PRP'), ('had', 'VBD'), ('meetings', 'NNS'), ('prior', 'RB'), ('and', 'CC'), ('after', 'IN'), ('CES', 'NNP'), (')', ')'), ('I', 'PRP'), ("'m", 'VBP'), ('going', 'VBG'), ('to', 'TO'), ('do', 'VB'), ('a', 'DT'), ('quick', 'JJ'), ('overview', 'NN'), ('of', 'IN'), ('CES', 'NNP'), ('and', 'CC'), ('what', 'WDT'), ('happened', 'VBD'), ('the', 'DT'), ('entire', 'JJ'), ('week', 'NN'), ('...', ':'), ('For', 'IN'), ('those', 'DT'), ('that', 'WDT'), ('do', 'VBP'), ("n't", 'RB'), ('know', 'VB'), ('what', 'WP'), ('CES', 'NNP'), ('is', 'VBZ'), (',', ','), ('it', 'PRP'), ('is', 'VBZ'), ('the', 'DT'), ('Consumer', 'NNPS'), ('Electronics', 'NNP'), ('Show', 'NNP'), (',', ','), ('held', 'VBD'), ('once', 'RB'), ('a', 'DT'), ('year', 'NN'), ('usually', 'RB'), ('on', 'IN'), ('the', 'DT'), ('first', 'JJ'), ('week', 'NN'), ('of', 'IN'), ('January', 'NNP'), ('in', 'IN'), ('Las', 'NNP'), ('Vegas', 'NNP'), ('and', 'CC'), ('is', 'VBZ'), ('the', 'DT'), ('largest', 'JJS'), ('consumer', 'NN'), ('products', 'NNS'), ('show', 'VBP'), ('in', 'IN'), ('the', 'DT'), ('world', 'NN'), ('.', '.'), ('This', 'DT'), ('year', 'NN'), (',', ','), ('a', 'DT'), ('lot', 'NN'), ('of', 'IN'), ('of', 'IN'), ('products', 'NNS'), ('and', 'CC'), ('companies', 'NNS'), ('revolved', 'VBN'), ('around', 'IN'), ('IoT', 'NNP'), ('(', '('), ('Internet', 'NNP'), ('of', 'IN'), ('Things', 'NNP'), (')', ')'), ('and', 'CC'), ('Virtual', 'JJ'), ('Reality', 'NNP'), ('and', 'CC'), ('Automation', 'NNP'), ('.', '.'), ('Did', 'NNP'), ('you', 'PRP'), ('know..', 'VB'), ('a', 'DT'), ('lot', 'NN'), ('of', 'IN'), ('whats', 'NNS'), ('listed', 'VBN'), ('below', 'IN'), ('can', 'MD'), ('eventually', 'RB'), ('be', 'VB'), ('doable', 'JJ'), ('with', 'IN'), ('the', 'DT'), ('PINE64', 'NNP'), ('?', '.'), ('Super', 'NNP'), ('psyched', 'VBD'), ('!', '.')]

NNPS: noun, proper, plural
    Americans Americas Amharas Amityvilles Amusements Anarcho-Syndicalists
    Andalusians Andes Andruses Angels Animals Anthony Antilles Antiques
    Apache Apaches Apocrypha ...
NNP: noun, proper, singular
    Motown Venneboerger Czestochwa Ranzer Conchita Trumplane Christos
    Oceanside Escobar Kreisler Sawyer Cougar Yvette Ervin ODI Darryl CTCA
    Shannon A.K.C. Meltex Liverpool ...
NNS: noun, common, plural
    undergraduates scotches bric-a-brac products bodyguards facets coasts
    divestitures storehouses designs clubs fragrances averages
    subjectivists apprehensions muses factory-jobs ...

VBP: verb, present tense, not 3rd person singular
    predominate wrap resort sue twist spill cure lengthen brush terminate
    appear tend stray glisten obtain comprise detest tease attract
    emphasize mold postpone sever return wag ...
VBN: verb, past participle
    multihulled dilapidated aerosolized chaired languished panelized used
    experimented flourished imitated reunifed factored condensed sheared
    unsettled primed dubbed desired ...
VBZ: verb, present tense, 3rd person singular
    bases reconstructs marks mixes displeases seals carps weaves snatches
    slumps stretches authorizes smolders pictures emerges stockpiles
    seduces fizzes uses bolsters slaps speaks pleads ...
VBD: verb, past tense
    dipped pleaded swiped regummed soaked tidied convened halted registered
    cushioned exacted snubbed strode aimed adopted belied figgered
    speculated wore appreciated contemplated ...

WDT: WH-determiner
    that what whatever which whichever

PRP: pronoun, personal
    hers herself him himself hisself it itself me myself one oneself ours
    ourselves ownself self she thee theirs them themselves they thou thy us

JJS: adjective, superlative
    calmest cheapest choicest classiest cleanest clearest closest commonest
    corniest costliest crassest creepiest crudest cutest darkest deadliest
    dearest deepest densest dinkiest ...

DT: determiner
    all an another any both del each either every half la many much nary
    neither no some such that the them these this those
EX: existential there
    there
RB: adverb
    occasionally unabatingly maddeningly adventurously professedly
    stirringly prominently technologically magisterially predominately
    swiftly fiscally pitilessly ...
IN: preposition or conjunction, subordinating
    astride among uppon whether out inside pro despite on by throughout
    below within for towards near behind atop around if like until below
    next into if beside ...
TO: "to" as preposition or infinitive marker
    to
VB: verb, base form
    ask assemble assess assign assume atone attention avoid bake balkanize
    bank begin behold believe bend benefit bevel beware bless boil bomb
    boost brace break bring broil brush build ...
MD: modal auxiliary
    can cannot could couldn't dare may might must need ought shall should
    shouldn't will would

CC: conjunction, coordinating
    & 'n and both but either et for less minus neither nor or plus so
    therefore times v. versus vs. whether yet
NN: noun, common, singular or mass
    common-carrier cabbage knuckle-duster Casino afghan shed thermostat
    investment slide humour falloff slick wind hyena override subhumanity
    machinist ...
JJ: adjective or numeral, ordinal
    third ill-mannered pre-war regrettable oiled calamitous first separable
    ectoplasmic battery-powered participatory fourth still-to-be-named
    multilingual multi-disciplinary ...

.: sentence terminator
    . ! ?
,: comma
    ,
:: colon or ellipsis
    : ; ...

--> Ich glaube es hat keine Fehler, bin mir aber ach nicht ganz sicher.

---
## NP Chunks
*Nehmen Sie einen englischen Text Ihrer Wahl mit mindestens fünf Sätzen und identifizieren Sie zunächst von Hand die darin enthaltenen NP-Chunks (non-overlapping phrases).*

*Wenden Sie die Methode ``nltk.pos_tag()`` auf diesen Text an.*

*Schreiben Sie dann eine Grammatik mit regulären Ausdrücken für POS-Tags, um die NP-Chunks mit einem RegexpParser zu dieser Grammatik detektieren zu können. Analysieren Sie ihr erreichtes Ergebnis.*

---
## Entitäten und semantische Kategorien
*Nehmen Sie einen englischsprachigen Text Ihrer Wahl (z.B. Zeitungsnachricht, Wirtschaftsmeldung, ...) mit mindestens fünf Sätzen und identifizieren Sie zunächst von Hand die darin enthaltenen benannten Entitäten und deren semantische Kategorien.*

*Bereiten Sie dann den Text so auf, dass Sie die Methode ``nltk.ne_chunk()`` auf ihn anwenden können.*

*Analysieren Sie ihr erreichtes Ergebnis. Welche werte ergeben sich für Recall und Precision?*

Text:
`Hey guys.. I know we haven't been updating and it's for quite a reason. There are tons of updates I want to share with you guys, and we will do so in the next 1-2 days.  I just got back from CES after a whopping 10+ days in Vegas (I had meetings prior and after CES)
I'm going to do a quick overview of CES and what happened the entire week...
For those that don't know what CES is, it is the Consumer Electronics Show, held once a year usually on the first week of January in Las Vegas and is the largest consumer products show in the world.  This year, a lot of of products and companies revolved around IoT (Internet of Things) and Virtual Reality and Automation.
Did you know.. a lot of whats listed below can eventually be doable with the PINE64? Super psyched!`

Entitäten:
updates
guys
CES / Consumer Electronics Show
Vegas / Las Vegas
PINE64

1. ``text="""TEXT"""``
2. ``tokens = nltk.word_tokenize(text)``
3. ``tagged_tokens=nltk.pos_tag(tokens)``
4. ``print nltk.ne_chunk(tagged_tokens,binary=False)``

Output:
``(S
  Hey/NNP
  guys../VBP
  I/PRP
  know/VBP
  we/PRP
  have/VBP
  n't/RB
  been/VBN
  updating/VBG
  and/CC
  it/PRP
  's/VBZ
  for/IN
  quite/RB
  a/DT
  reason/NN
  ./.
  There/EX
  are/VBP
  tons/NNS
  of/IN
  updates/NNS
  I/PRP
  want/VBP
  to/TO
  share/NN
  wit/NN
  you/PRP
  guys/VBP
  ,/,
  and/CC
  we/PRP
  will/MD
  do/VB
  so/RB
  in/IN
  the/DT
  next/JJ
  1-2/JJ
  days/NNS
  ./.
  I/PRP
  just/RB
  got/VBD
  back/RB
  from/IN
  (ORGANIZATION CES/NNP)
  after/IN
  a/DT
  whopping/JJ
  10+/CD
  days/NNS
  in/IN
  (GPE Vegas/NNP)
  (/(
  I/PRP
  had/VBD
  meetings/NNS
  prior/RB
  and/CC
  after/IN
  (ORGANIZATION CES/NNP)
  )/)
  I/PRP
  'm/VBP
  going/VBG
  to/TO
  do/VB
  a/DT
  quick/JJ
  overview/NN
  of/IN
  (ORGANIZATION CES/NNP)
  and/CC
  what/WDT
  happened/VBD
  the/DT
  entire/JJ
  week/NN
  .../:
  For/IN
  those/DT
  that/WDT
  do/VBP
  n't/RB
  know/VB
  what/WP
  (ORGANIZATION CES/NNP)
  is/VBZ
  ,/,
  it/PRP
  is/VBZ
  the/DT
  (ORGANIZATION Consumer/NNPS Electronics/NNP Show/NNP)
  ,/,
  held/VBD
  once/RB
  a/DT
  year/NN
  usually/RB
  on/IN
  the/DT
  first/JJ
  week/NN
  of/IN
  January/NNP
  in/IN
  (GPE Las/NNP Vegas/NNP)
  and/CC
  is/VBZ
  the/DT
  largest/JJS
  consumer/NN
  products/NNS
  show/VBP
  in/IN
  the/DT
  world/NN
  ./.
  This/DT
  year/NN
  ,/,
  a/DT
  lot/NN
  of/IN
  of/IN
  products/NNS
  and/CC
  companies/NNS
  revolved/VBN
  around/IN
  (GPE IoT/NNP)
  (/(
  Internet/NNP
  of/IN
  (GPE Things/NNP)
  )/)
  and/CC
  (PERSON Virtual/JJ Reality/NNP)
  and/CC
  (ORGANIZATION Automation/NNP)
  ./.
  Did/NNP
  you/PRP
  know../VB
  a/DT
  lot/NN
  of/IN
  whats/NNS
  listed/VBN
  below/IN
  can/MD
  eventually/RB
  be/VB
  doable/JJ
  with/IN
  the/DT
  (ORGANIZATION PINE64/NNP)
  ?/.
  (PERSON Super/NNP)
  psyched/VBD
  !/.)
``

* True positives (TP) are relevant items that we correctly identified as relevant.
* True negatives (TN) are irrelevant items that we correctly identified as irrelevant.
* False positives (FP)(or Type I errors) are irrelevant items that we incorrectly identified as relevant.
* False negatives (FN)(or Type II errors) are relevant items that we incorrectly identified as irrelevant.

Given these four numbers, we can define the following metrics:

* Precision, which indicates how many of the items that we identified were relevant, is TP/(TP+FP).
* Recall, which indicates how many of the relevant items that we identified, is TP/(TP+FN).

The F-Measure (or F-Score), which combines the precision and recall to give a single score, is defined to be the harmonic mean of the precision and recall: (2 × Precision × Recall) / (Precision + Recall).

Quelle: http://www.nltk.org/book/ch06.html
