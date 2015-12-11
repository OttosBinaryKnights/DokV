declare namespace rcp="http://www.w3.org/1999/html";
(:declare function local:GreekCities($ctry as element(country))
      as decimal? {
      for $x in doc("worldwide.xml")//country[name = "Greece"]
      return $x//city/name
};:)

declare function local:DesertArea($cont as String)
      as decimal? {
      for $x in country/@car_code[../encompassed/@continent = $cont
      return $x//city/name
};

declare function local:DesertAreaCountry($country as String)
      as decimal? {
      for $x in //desert[@country = $country]
      return $x//city/name
};

country/@car_code[../encompassed/@continent = $cont

(:let $doc := fn:doc("worldwide.xml":)

<geographie>
<!-- Städte Griechenlands -->
{
  for $x in doc("worldwide.xml")//country[name = "Greece"]
  return $x//city/name
}

<!-- Was sind die drei höchsten Berge in China? -->
{
  (:Gibt nur diese zwei chinesischen Berge:)
  for $x in doc("worldwide.xml")//mountain[@country = 'TJ']
  return $x//name
}
<!-- Wie viel Wüstenfläche besitzen die einzelnen Kontinente? -->
{
  for $i in //Event
  let $code := $i/code
  group by $code
  return element {"code"} { attribute {"id"} {$code}, sum($i/Amount)}
}

<!-- Geben sie die Städte vollständig aus, welche an der Donau (bzw. einem Fluss X) liegen und deren Land ("country") das größte Bruttosozialprodukt entlang der Donau (bzw. einem Fluss X) besitzt. (Für die Ausgabe ist der Fluss X mit dem Wert Donau zu belegen) -->

<!-- Wie groß ist die aufsummierte Bevölkerungsdichte von Drei-Länder-Ecks? Drei-Länder-Ecks werden vereinfacht als eine Menge der Größe drei von Ländern betrachtet, wobei jedes Land mit jedem anderen der Menge außer sich selbst benachbart ist. -->
</geographie>
