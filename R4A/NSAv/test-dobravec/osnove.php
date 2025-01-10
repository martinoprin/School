<<<<<<< HEAD
<?php
echo "echo \"string1\".\"string2\".\"string3\";<br/>";
echo "&amp;nbsp; = presledek<br/>";
echo "<pre>
$"."x = 3;
if($"."x === \"3\") {
    echo \"true\";
} else {
    echo \"false\";
}
//<i style='color:darkgreen'>rezultat je false zaradi različnih podatkovnih tipov</i>

if($"."x == \"3\") {
    echo \"true\";
} else {
    echo \"false\";
}
//<i style='color:darkgreen'>rezultat je true, ker preverja samo vrednost</i>
//<i style='color:darkgreen'>switch preverja case na tak način</i>

echo \"5\" / 2; //<i style='color:darkgreen'>".("5" / 2)."</i>
echo \"5\" * \"4\"; //<i style='color:darkgreen'>".("5" * "4")."</i>

$"."str = \"cugi\";
$"."str = $"."str.\"cugi\"; //<i style='color:darkgreen'>cugicugi</i>
$"."str .= \"lonca\"; //<i style='color:darkgreen'>cugicugilonca</i>
var_dump($"."str); //<i style='color:darkgreen'>string(13) \"cugicugilonca\"</i>
range(-2, 2); //<i style='color:darkgreen'>[-2, -1, 0, 1, 2]</i>

$"."tab = [2, 5 => \"Major\", \"2\" => 6, false => 5, 2 => 444];
var_dump($"."tab);
//<i style='color:darkgreen'>array(3) { [0]=> int 5 [5]=> string(5) \"Major\" [2]=> int 444 }</i>

define(\"IME_KONSTANTE\", 3.14);
echo IME_KONSTANTE;//<i style='color:darkgreen'>3.14</i>

$"."r = rand(0, 10);//<i style='color:darkgreen'>Interval naključne številke [0, 10]</i>

echo date(\"H:i:s d.m.Y\");//<i style='color:darkgreen'>".date("H:i:s d.m.Y")."</i>

foreach($"."tab as $"."kljuc => $"."vrednost) {
    echo \"$"."kljuc => $"."vrednost, \";
}
//<i style='color:darkgreen'>for uporabiš samo za indeksne tabele</i>
</pre>";
=======
<?php
echo "echo \"string1\".\"string2\".\"string3\";<br/>";
echo "&amp;nbsp; = presledek<br/>";
echo "<pre>
$"."x = 3;
if($"."x === \"3\") {
    echo \"true\";
} else {
    echo \"false\";
}
//<i style='color:darkgreen'>rezultat je false zaradi različnih podatkovnih tipov</i>

if($"."x == \"3\") {
    echo \"true\";
} else {
    echo \"false\";
}
//<i style='color:darkgreen'>rezultat je true, ker preverja samo vrednost</i>
//<i style='color:darkgreen'>switch preverja case na tak način</i>

echo \"5\" / 2; //<i style='color:darkgreen'>".("5" / 2)."</i>
echo \"5\" * \"4\"; //<i style='color:darkgreen'>".("5" * "4")."</i>

$"."str = \"cugi\";
$"."str = $"."str.\"cugi\"; //<i style='color:darkgreen'>cugicugi</i>
$"."str .= \"lonca\"; //<i style='color:darkgreen'>cugicugilonca</i>
var_dump($"."str); //<i style='color:darkgreen'>string(13) \"cugicugilonca\"</i>
range(-2, 2); //<i style='color:darkgreen'>[-2, -1, 0, 1, 2]</i>

$"."tab = [2, 5 => \"Major\", \"2\" => 6, false => 5, 2 => 444];
var_dump($"."tab);
//<i style='color:darkgreen'>array(3) { [0]=> int 5 [5]=> string(5) \"Major\" [2]=> int 444 }</i>

define(\"IME_KONSTANTE\", 3.14);
echo IME_KONSTANTE;//<i style='color:darkgreen'>3.14</i>

$"."r = rand(0, 10);//<i style='color:darkgreen'>Interval naključne številke [0, 10]</i>

echo date(\"H:i:s d.m.Y\");//<i style='color:darkgreen'>".date("H:i:s d.m.Y")."</i>

foreach($"."tab as $"."kljuc => $"."vrednost) {
    echo \"$"."kljuc => $"."vrednost, \";
}
//<i style='color:darkgreen'>for uporabiš samo za indeksne tabele</i>
</pre>";
>>>>>>> 1a8fd79c76eec120d9df217f096fe8028ab7940f
?>