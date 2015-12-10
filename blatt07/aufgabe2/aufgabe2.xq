declare namespace rcp="http://www.w3.org/1999/html";
let $doc := fn:doc("recipes.xml")
for $x in $doc
order by $x/rcp:nutrition
return $x//title
