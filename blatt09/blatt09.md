
# 9.2 Reguläre Ausdrücke
1. **Formulieren Sie einen regulären Ausdruck, der in einem Text alle kleingeschriebenen Wörter findet, die auf e enden.**

  ``\b[a-z]*e\b``

2. **Formulieren Sie einen regulären Ausdruck, der sich wiederholende Wörter in einem Text findet! Beispiel: "the the"**

  ``\b(\w+)\s\1\b``

3. **Erstellen Sie reguläre Ausdrücke, die verschiedene Schreibweisen von Öffnungszeiten (z.B. von Sehenswürdigkeiten) beschreiben. Es sollen sowohl einzelne Uhrzeiten sowie Intervallangaben erkannt werden (einschließlich der vorhandenen Restriktionen: winter, daily, etc.):**

  ``(winter:|summer:)?((Mo|Tu|We|Th|Fr|Sa|Su)\s?(-)\s?(Mo|Tu|We|Th|Fr|Sa|Su)?)? [0-1]?[0-9](:[0-5][0-9])?\s?(am|pm)(\s?-\s?[0-1]?[0-9](:[0-5][0-9])?\s?(am|pm))?\s?(daily)?``

mögliche Vorkommen:
    - ... Mo-Fr 8:30am-4:30pm ...
    - ... winter: 6:30 pm, 7:30pm, 8:30 pm daily; summer: 8:30pm, 9:30pm, 10:30pm daily ...
    - ... 9 am - 4:30 pm ...

# 9.3
1. Welche der folgenden Zeichenketten matcht der reguläre Ausdruck ``[a-z][\.\?!]\s+[A-Z]``?
 * ``A. B``
 * ``c! d``
 * ``e f``
 * ``g. H`` --> matched!
 * ``i? J`` --> matched!
 * ``k L``

2. Welche der folgenden Zeichenketten matcht der reguläre Ausdruck ``(very )+(fat )?(tall|ugly) man``?
 * ``very fat man`` - tall oder ugly fehlt
 * ``fat tall man`` - very fehlt
 * ``very very fat ugly man`` --> matched!
 * ``very very very tall man`` --> matched!

3. Welche der folgenden Zeichnketten matchen den regulären Ausdruck ``<[^>]+>``?
 * ``<an xml tag>`` --> matched!
 * ``<opentag> <closetag>`` --> matched je auf die einzelnen tags, nicht auf beide gemeinsam!
 * ``</closetag>`` --> matched!
 * ``<>`` - mindestens ein Charakter zwischen <> nötig
 * ``<with attribute=”77”>`` --> matched!
