declare namespace funct = "http://www.google.com";
declare function funct:eqMod
  ( $x1 as xs:integer, $x2 as xs:integer, $div as xs:integer )  as xs:boolean {
    if ($x1 mod $div = $x2 mod $div) then true()
    else false()
 } ;

funct:eqMod(7,18,9)
