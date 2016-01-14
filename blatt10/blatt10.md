# Aufgabenblatt 10
## IE-Textanalyse
*Sehen Sie folgenden [Text](vw.txt) an und beantworten Sie die folgenden Fragen:*
* *Welche Entitäten treten auf? Geben Sie Beispiele für Entitäten und ihre Eigenschaften an.*
* *Welche Beziehungen bestehen zwischen den Entitäten?*
* *Welche Scenario-Templates lassen sich beschreiben (je Dokument mind. 2 Templates)?*

---
## IE-Textanalyse (2)
*Sehen Sie folgenden [Text](china.txt) an und beantworten Sie die folgenden Fragen:*
* *Welche Entitäten treten auf? Geben Sie Beispiele für Entitäten und ihre Eigenschaften an.*
* *Welche Beziehungen bestehen zwischen den Entitäten?*
* *Welche Scenario-Templates lassen sich beschreiben (je Dokument mind. 2 Templates)?*

---
## NLTK Part-of-Speech Tagging
In der Vorlesung haben Sie das Python-Toolkit [NLTK](http://www.nltk.org) kennengelernt. In den folgenden Übungsaufgaben wollen wir uns dieses Toolkit in der Praxis etwas näher anschauen. Wenn Sie Python nicht auf Ihrem Rechner installieren möchten, können Sie die Übungsaufgaben online mit [pythonanywhere.com](https://www.pythonanywhere.com) bearbeiten. Auf der NLTK-Webseite finden Sie auch ein frei verfügbares [Buch](http://www.nltk.org/book_1ed/), dass Ihnen beim Umgang mit NLTK hilft.

*Wenden Sie die Methode nltk.pos_tag() auf einen englischen Text Ihrer Wahl mit mindestens fünf Sätzen an. Analysieren Sie das Ergebnis: Welche POS-Zuordnungen sind fehlerhaft? Sie können sich mit*

``nltk.help.upenn_tagset('TAG')``

*über die die Bedeutung eines POS-Tags 'TAG' informieren. Dabei sind auch reguläre Ausdrücke möglich wie in*

``nltk.help.upenn_tagset(’NN.*’)``

Text:
`Hey guys.. I know we haven't been updating and it's for quite a reason. There are tons of updates I want to share wit you guys, and we will do so in the next 1-2 days.  I just got back from CES after a whopping 10+ days in Vegas (I had meetings prior and after CES)
I'm going to do a quick overview of CES and what happened the entire week...
For those that don't know what CES is, it is the Consumer Electronics Show, held once a year usually on the first week of January in Las Vegas and is the largest consumer products show in the world.  This year, a lot of of products and companies revolved around IoT (Internet of Things) and Virtual Reality and Automation.
Did you know.. a lot of whats listed below can eventually be doable with the PINE64? Super psyched!`

Output:
[('Hey', 'NNP'), ('guys..', 'VBP'), ('I', 'PRP'), ('know', 'VBP'), ('we', 'PRP'), ('have', 'VBP'), ("n't", 'RB'), ('been', 'VBN'), ('updating', 'VBG'), ('and', 'CC'), ('it', 'PRP'), ("'s", 'VBZ'), ('for', 'IN'), ('quite', 'RB'), ('a', 'DT'), ('reason', 'NN'), ('.', '.'), ('There', 'EX'), ('are', 'VBP'), ('tons', 'NNS'), ('of', 'IN'), ('updates', 'NNS'), ('I', 'PRP'), ('want', 'VBP'), ('to', 'TO'), ('share', 'NN'), ('wit', 'NN'), ('you', 'PRP'), ('guys', 'VBP'), (',', ','), ('and', 'CC'), ('we', 'PRP'), ('will', 'MD'), ('do', 'VB'), ('so', 'RB'), ('in', 'IN'), ('the', 'DT'), ('next', 'JJ'), ('1-2', 'JJ'), ('days', 'NNS'), ('.', '.'), ('I', 'PRP'), ('just', 'RB'), ('got', 'VBD'), ('back', 'RB'), ('from', 'IN'), ('CES', 'NNP'), ('after', 'IN'), ('a', 'DT'), ('whopping', 'JJ'), ('10+', 'CD'), ('days', 'NNS'), ('in', 'IN'), ('Vegas', 'NNP'), ('(', '('), ('I', 'PRP'), ('had', 'VBD'), ('meetings', 'NNS'), ('prior', 'RB'), ('and', 'CC'), ('after', 'IN'), ('CES', 'NNP'), (')', ')'), ('I', 'PRP'), ("'m", 'VBP'), ('going', 'VBG'), ('to', 'TO'), ('do', 'VB'), ('a', 'DT'), ('quick', 'JJ'), ('overview', 'NN'), ('of', 'IN'), ('CES', 'NNP'), ('and', 'CC'), ('what', 'WDT'), ('happened', 'VBD'), ('the', 'DT'), ('entire', 'JJ'), ('week', 'NN'), ('...', ':'), ('For', 'IN'), ('those', 'DT'), ('that', 'WDT'), ('do', 'VBP'), ("n't", 'RB'), ('know', 'VB'), ('what', 'WP'), ('CES', 'NNP'), ('is', 'VBZ'), (',', ','), ('it', 'PRP'), ('is', 'VBZ'), ('the', 'DT'), ('Consumer', 'NNPS'), ('Electronics', 'NNP'), ('Show', 'NNP'), (',', ','), ('held', 'VBD'), ('once', 'RB'), ('a', 'DT'), ('year', 'NN'), ('usually', 'RB'), ('on', 'IN'), ('the', 'DT'), ('first', 'JJ'), ('week', 'NN'), ('of', 'IN'), ('January', 'NNP'), ('in', 'IN'), ('Las', 'NNP'), ('Vegas', 'NNP'), ('and', 'CC'), ('is', 'VBZ'), ('the', 'DT'), ('largest', 'JJS'), ('consumer', 'NN'), ('products', 'NNS'), ('show', 'VBP'), ('in', 'IN'), ('the', 'DT'), ('world', 'NN'), ('.', '.'), ('This', 'DT'), ('year', 'NN'), (',', ','), ('a', 'DT'), ('lot', 'NN'), ('of', 'IN'), ('of', 'IN'), ('products', 'NNS'), ('and', 'CC'), ('companies', 'NNS'), ('revolved', 'VBN'), ('around', 'IN'), ('IoT', 'NNP'), ('(', '('), ('Internet', 'NNP'), ('of', 'IN'), ('Things', 'NNP'), (')', ')'), ('and', 'CC'), ('Virtual', 'JJ'), ('Reality', 'NNP'), ('and', 'CC'), ('Automation', 'NNP'), ('.', '.'), ('Did', 'NNP'), ('you', 'PRP'), ('know..', 'VB'), ('a', 'DT'), ('lot', 'NN'), ('of', 'IN'), ('whats', 'NNS'), ('listed', 'VBN'), ('below', 'IN'), ('can', 'MD'), ('eventually', 'RB'), ('be', 'VB'), ('doable', 'JJ'), ('with', 'IN'), ('the', 'DT'), ('PINE64', 'NNP'), ('?', '.'), ('Super', 'NNP'), ('psyched', 'VBD'), ('!', '.')]

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
