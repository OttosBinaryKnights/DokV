# Aufgabenblatt 7
## XPath und DTDs
**Gegeben Sei ein XML-Dokument, das konform zu folgender DTD ist:**
```
<!ELEMENT Universität (Fachbereich+,Gebäude+)>
<!ELEMENT Fachbereich (Lehrstuhl+,Dekan)>
<!ATTLIST FachbereichName CDATA #REQUIRED                     
                     FbNr ID #REQUIRED>
<!ELEMENT Dekan EMPTY>
<!ATTLIST Dekan ProfRef IDREF #REQUIRED>
<!ELEMENT Lehrstuhl (Bezeichnung,Professor+,Mitarbeiter*)>
<!ELEMENT Professor (Titel+,Name,Vorlesung+)>
<!ATTLIST Professor ProfNr ID #REQUIRED
                     RaumRef IDREF #IMPLIED>
<!ELEMENT Titel (#PCDATA)>                                    
<!ELEMENT Name (Vorname+,Nachname)>                           
<!ELEMENT Vorname (#PCDATA)>
<!ELEMENT Nachname (#PCDATA)>
<!ELEMENT Vorlesung (Bezeichnung, Termin+)>
<!ATTLIST Vorlesung VorlNr ID #REQUIRED>
<!ELEMENT Bezeichnung (#PCDATA)>
<!ELEMENT Termin EMPTY>
<!ATTLIST Termin Wochentag CDATA #REQUIRED
                 Uhrzeit CDATA #REQUIRED
                 RaumRef IDREF #REQUIRED>
<!ELEMENT Mitarbeiter (Name, betreut*)>
<!ATTLIST Mitarbeiter    MaNr ID #REQUIRED
                         Abschluss CDATA #IMPLIED
                         RaumRef IDREF #IMPLIED>
<!ELEMENT betreut EMPTY>
<!ATTLIST betreut VorlRef IDREF #REQUIRED>
<!ELEMENT Gebäude (Raum)>
<!ATTLIST Gebäude GebNr ID #REQUIRED>
<!ELEMENT Raum EMPTY>
<!ATTLIST Raum   RaumNr ID #REQUIRED
                 Fläche CDATA #IMPLIED
                 Plätze CDATA #IMPLIED>
```
**Beantworten Sie folgende Anfragen mit einem XPath-Ausdruck:**

a) **Geben Sie alle Professoren aus, die im Fachbereich "Philosophie" einem Lehrstuhl angehören.**
``//Fachbereich[@FachbereichName = 'Philosophie']/Professor``

b) **Welche Vorlesungen (Bezeichnung) des Lehrstuhls "Anorganische Chemie" werden an Donnerstagen angeboten?**
``//Lehrstuhl[/Bezeichnung = 'Anorganische Chemie']/Professor/Vorlesung[.//Termin/@Wochentag = 'Donnerstag' ]/Bezeichnung``

c) **Welche Vorlesungen (Bezeichnung) betreut der Mitarbeiter Waldemar Müller?**
``//Vorlesung[@ID = //Mitarbeiter[Name/Vorname = 'Waldemar' and Name/Nachname='Müller']/betreut/@IDBetreut]``

d) **Welche Vorlesungen finden am gleichen Tag und zur gleichen Uhrzeit statt wie die Vorlesung mit der Vorlesungsnummer "Vorl-13-002"?**
``//Vorlesung[Termin/@Wochentag = //Vorlesung[@NorlNr = 'Vorl-13-002']/Termin/@Wochentag and Termin/@Uhrzeit = //Vorlesung[@NorlNr = 'Vorl-13-002']/Termin/@Uhrzeit]``

e) **Welche Räume sind Professoren zugeordnet?**
``//Raum[@RaumNr = //Professor/@RaumREF]``
---
## XQuery 1
**Gegeben ist dieses XML-Dokument mit einer Sammlung von Kochrezepten: ![recipes.xml](recipes.xml). Schreiben Sie ein XQuery-programm, das für alle Rezepte die jeweiligen Titel und die Kalorienangabe liefert. Die Ausgabe soll aufsteigend nach Kalorien sortiert sein. Das Ergebnis soll ein wohlgeformtes XML-Dokument mit dem Wurzelelement ``<results>`` sein.**

---
## Geographie
**Gegeben ist die XML-Datei ![worldwide.xml](worldwide.xml), die geographische Informationen enthält. Schreiben Sie eine XQuery-Abfragedatei zu den unten angegebenen Fragestellungen. Die Fragmente zur Beantwortung der Fragestellung können Sie in selbst definierte (lokale) Funktionen auslagen. Geben Sie die Antworten wohl strukturiert als XML-Dokument mit dem Wurzelknoten ``<geographie>`` aus. Folgende Fragestellungen sollen beantwortet werden:**

* **Was sind die Namen aller Städte Griechenlands?**
* **Was sind die drei höchsten Berge in China?**
* **Wie viel Wüstenfläche besitzen die einzelnen Kontinente?**
* **Geben sie die Städte vollständig aus, welche an der Donau (bzw. einem Fluss X) liegen und deren Land ("country") das größte Bruttosozialprodukt entlang der Donau (bzw. einem Fluss X) besitzt. (Für die Ausgabe ist der Fluss X mit dem Wert Donau zu belegen)**
* **Wie groß ist die aufsummierte Bevölkerungsdichte von Drei-Länder-Ecks? Drei-Länder-Ecks werden vereinfacht als eine Menge der Größe drei von Ländern betrachtet, wobei jedes Land mit jedem anderen der Menge außer sich selbst benachbart ist.**

---
## Angestellte
**Gegeben ist die XML-Datei ![angestellte.xml](angestellte.xml). Schreiben Sie eine XQuery-Abfrage, die folgendes Ergebnis liefert:**
* **Ein Wurzelelement Angestellte wird erzeugt**
* **Die Elemente Angestellter werden extrahiert**
* **Über die Verweise durch das Element Referenz mit dessen Attribut Fähigkeit werden den extrahierten Elementen Angestellter die referenzierten Elemente Fähigkeit hinzugefügt**
* **Die Elemente Referenz werden nicht extrahiert**
* **Den Angestellten (extrahierte Elemente Angestellter) sollen die zugewiesen Aufgaben (als Elemente Aufgabe) (referenziert über die Zuordnungen) als Inhalt hinzugefügt werden**
* **Die Abfragen sollen auf Basis der Schlüssel arbeiten.**

---

## pythagoreische Tripel mit XQuery
**In Aufgabenblatt 5 haben Sie pythagoreische Tripel mit Hilfe von XSLT erzeugt. Setzen Sie diese Funktion nun mit Hilfe von XQuery um. Die Eingabe ist wieder eine XML-Datei der Form**
```
<?xml version="1.0" encoding="UTF-8"?>
<pythago>
	<limit>100</limit>
</pythago>
```
**Die XQuery-Funktion soll wieder eine Ausgabe der Form**
```
<?xml version="1.0" encoding="UTF-8"?>
<pythagTriples>
    <pTriple>
        <x>3</x>
        <y>4</y>
        <z>5</z>
    </pTriple>
    ...
</pythagTriples>
```
**erzeugen.**

---
