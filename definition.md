# Definitionen und pot. Prüfungsfragen
!Potentielle/Sichere Prüfungsfragen mit ! markiert
## Wohlgeformt
 * öffnende UND schließende Targets
 -> keine Minimierung
 * ein Wurzelelement
 * keine Überlappung von Tags
 -> "Was heißt das?"" BAUMSTRUKTUR!
 * Attributwerte in Quotes eingeschlossen

## Entitäten
 * Beginnen mit &
 * z.B. & quot;

## DTD
### Attribute
    <!ATTLIST element attname CDATA #IMPLIED>
    <!ATTLIST element attname CDATA #REQUIRED>
    <!ATTLIST element attname CDATA #FIXED>
    <!ATTLIST element attname CDATA (foo|bar) "baz">

**An der Stelle von CDATA kann stehen:**
  * CDATA -> Character Datenhaltung
  * ENTITY
  * ENTITIES
  * ID (darf nicht mit Zahl anfangen)
  * IDREF (wie Fremdschlüssel)
  * NMTOKEN ->
  * NMTOKENS (Liste von NMTOKEN)
  * NOTATIONS (verweise auf anderes Dokument)
  z.B. gif src ...
  * Alternative (x|y)

## XML
### 5 Stichwörter
 * Wohlgeformtheit
 * Baumstruktur
  * Knotenarten
 * Validität
 * Keine Minimierung (vgl. mit SGML)
 * DTD

### XML Preamble
```
<?xml version="1.0" encoding="UTF-8"?>
```
--> keine Processing Instruction
### ! Valide vs. Wohlgeformt
 * wohlgeformt = XML alleine ist wohlgeformt
 * valide = XML Erfüllt/entspricht einer Struktur (vorrausgesetzt: wohlgeformt)

### !!! 7 XML Knotentypen
*die Wesentlichen in Prüfung ausreichend*
 * Root node (Wurzelknoten/Dokumentwurzel):
   Dieser darf nicht mit dem Wurzelelement selbst verwechselt werden. Vielmehr ist dieser der virtuelle Elternknoten (parent node) des Wurzelelements.
 * Element node (Elementknoten)
 * Attribute node (Attributknoten)
 * Text node (Textknoten)
 * Namespace node (Namensraumknoten)
 * Processing instruction node    (Verarbeitungsanweisungsknoten)
 * Comment node (Kommentarknoten)

#### Processing Instructions
```
  <?Target Data?>
```
 * eigene Targetname dürfen nicht mit xml beginnen. (XML Prozessor ignoriert alle Targets die nicht mit "xml" beginnen)
 * XML Preamble ist keine PI

 Bsp.:
 ```
   <?php ... ?>
 ```

## XSLT Verarbeitung
*Ziel:* XML-Baumstrukturen in Baumstrukturen umwandeln.

### Templates
* Werden für gewöhnlich nach Import Reihenfolge gewichtet
* Manuelle Gewichtung möglich

#### default templates
Werden aufgerufen wenn im Stylesheet selbst kein template anzuwenden ist.
 * default Template für Elementknoten:
  * ruft Templates für die Kinderknoten auf
 * default Template für Attribute:
  *

### Zeichen
* **```//knotenname``` = ```descendants::knotenname```**

  Alle Nachfahren des Typs 'knotenname' vom aktuellen Knoten aus

* ```*//knotenname```
* ```.``` Der aktuelle Standpunkt (ich inklusive)
* ```*``` Alle Kinder (ich exklusive)

### ! Sprachmittel um Iterationen und Verzweigungen in XLST zu realisieren

 * ```<xsl:if test="XPATH AUSDRÜCKE"></xsl:if>```

## XPath
Navigieren und Knotenmengen lokalisieren
Verwendung z.B. in match-Attributen

### Auswahl via:
* Knotentypen
* Achsen
* Pfade

#### Achsen
 * child
 * parent
 * descendant *(in Preorder)*
 * ancestor
 * following *(in Preorder)*
 * preceding
 * descendant-or-self
 * ancestor-or-self
 * Attribute
 * namespace

#### Pfade
 * / knotenname
 * :: Achsen
 * Wildcards: child:: $*, *, //$
 * Attribute
  *
  *
 * Bedingungen
  * ```self::foo```
  * ```bar[3]``` (**XPath beginnt mit 1 zu zählen!**)
  * ```bar[last()]```
  * ```foo//baz```
    *Alle Kinder baz von foo*

### Funktionen

### Filter
in Eckigen Klammern
* test="3" prüfte bisher die Position
* Multiple Filter - Reihenfolge ausschlaggebend!
 * ```//KIND[2][PERSON/KIND] ``` - beliebiges 2. Kind hat auch Kinder
 * ```//KIND[PERSON/KIND][2] ``` - von den beliebigen Kindern mit eigenen Kindern der Zweite

### Attributwert
werden mit geschweiften Klammern ```<element att="{$attname}">```

## XQuery
(htto://stylusstudio.com/xquery_primer.html)
(Abfrage Sprache für XML, wie SQL für DB-Tabellen)
* verwendet XPath Ausdrücke
Abfrage Starten

### FLWOR
#### Klauseln:
  * for
  * let
  *
  * Order
  *
#### Kommentare
  * ```(: Kommentar Text :)```

### Benutzerdefinierte Funktionen
  besteht aus Funktionkopf und Funktionsrumpf


# Informationsextraktion
wenn Quellen nicht formatiert sind, sondern natürlich sprachlich kommt IE wrsl zur Anwendung

## Definition:
unseen textes input -> structured output (eindeutig)

Problem: Text of mehrdeutig / verschiedene Texte mit gleicher Aussage

### Namen
im Englischen: Eigennamen über Großschreibung

### Entitäten
Personen, Organisationen, Städte & Orte

### Beziehungen
Hängen oft an Verben oder verbalen Strukturen

## Phasen der Informationsextraktion
### NE(R) - Named Entity Recognition
Entitäten werden bestimmt

### CO - Coreference Resolution
Die Deutsche Bank ... ! *Sie* war ...

### TE - Template Element Construction
Elemente festlegen

### TR - Template Relation Construction
Beziehungen zwischen den Elementen

### ST Scenario Template Production
Daraus wird ein Scenario Template gebastelt
