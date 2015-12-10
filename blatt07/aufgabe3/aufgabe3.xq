declare namespace rcp="http://www.w3.org/1999/html";
let $doc := fn:doc("worldwide.xml")

local:order-value($doc/mondial)


declare function local:order-value($po as element(mondial))
      as xs:double {
      for $x in $doc
      order by $x/rcp:nutrition
      return $x//name
};
