declare namespace rcp="http://www.brics.dk/ixwt/recipes";

<results>
{
  let $doc := fn:doc("recipes.xml")/rcp:collection/rcp:recipe
  for $x in $doc
  order by xs:integer($x/rcp:nutrition/@calories)
  return <recipe><title>{data($x/rcp:title)}</title><calories>{data($x/rcp:nutrition/@calories)}</calories></recipe>
}
</results>
