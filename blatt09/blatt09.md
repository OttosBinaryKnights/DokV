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
