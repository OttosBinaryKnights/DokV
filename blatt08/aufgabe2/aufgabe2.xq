declare function local:elimVocalsDE($str as xs:string?) as xs:string?{
  let $str := $str
  return replace($str, '[AaEeIiOoUuÄäÖöÜü]', '')
};

declare function local:elimVocalsEN($str as xs:string?) as xs:string?{
  let $str := $str
  return replace($str, '[AaEeIiOoUu]', '')
};

local:elimVocalsEN("TÄTERÖTITA")
