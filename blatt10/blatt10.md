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

`nltk.help.upenn_tagset('TAG')``

*über die die Bedeutung eines POS-Tags 'TAG' informieren. Dabei sind auch reguläre Ausdrücke möglich wie in*

``nltk.help.upenn_tagset(’NN.*’)``

---
## NP Chunks
*Nehmen Sie einen englischen Text Ihrer Wahl mit mindestens fünf Sätzen und identifizieren Sie zunächst von Hand die darin enthaltenen NP-Chunks.*

*Wenden Sie die Methode ``nltk.pos_tag()`` auf diesen Text an.*

*Schreiben Sie dann eine Grammatik mit regulären Ausdrücken für POS-Tags, um die NP-Chunks mit einem RegexpParser zu dieser Grammatik detektieren zu können. Analysieren Sie ihr erreichtes Ergebnis.*

---
## Entitäten und semantische Kategorien
*Nehmen Sie einen englischsprachigen Text Ihrer Wahl (z.B. Zeitungsnachricht, Wirtschaftsmeldung, ...) mit mindestens fünf Sätzen und identifizieren Sie zunächst von Hand die darin enthaltenen benannten Entitäten und deren semantische Kategorien.*

*Bereiten Sie dann den Text so auf, dass Sie die Methode ``nltk.ne_chunk()`` auf ihn anwenden können.*

*Analysieren Sie ihr erreichtes Ergebnis. Welche werte ergeben sich für Recall und Precision?*
