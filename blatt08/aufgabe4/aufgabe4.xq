declare function local:getArticle($auth as xs:string){
  for $art in doc("pods98.xml")//article
  where $art/author = $auth
  return $art/title
};

declare function local:AuthorList(){
  for $auth in doc("pods98.xml")//author
  order by $auth
  return <entry>{$auth} {local:getArticle( $auth )} </entry>
};

declare function local:AvgPages() as xs:decimal{
  let $blank := 0
  return avg( local:Pages(doc("pods98.xml")//article) )
};

declare function local:Pages($b as element()*) as xs:integer*{
  for $a in $b
  let $to := $a/to
  let $from := $a/from
  return xs:integer($to - $from)
};

<AuthorList>
  { local:AuthorList() }
  <AVGPAGES>
    { local:AvgPages() }
  </AVGPAGES>
</AuthorList>
