declare function local:pTriple($n as xs:decimal?, $m as xs:decimal?, $x  as xs:decimal?, $y as xs:decimal?, $z as xs:decimal?) 
as xs:decimal?{
 let $n :=1 
let $m :=n+1 
let $x :=0 
let $y :=0 
let $z :=0 
for if $z<=100 
return than $m=$m+1, $x=($m*$m)-($n*$n), $y=2*$m*$n,  $z=($m*$m)+($n*$n)
else $n=$n+1, $m=$m+1, $x=($m*$m)-($n*$n), $y=2*$m*$n,$z=($m*$m)+($n*$n)
 };

return local:pTriple();
