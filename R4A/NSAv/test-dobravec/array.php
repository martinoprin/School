<?php
echo "<h1>INCLUDE, REQUIRE</h1>";
echo "<pre>
Če napišemo
include 'index.php'; v file array.php
    se zgodi napaka, ker smo file include-al dvakrat
Pravilno je
include_once 'index.php';

Enako velja za require in require_once

include bo vrnil warning če ne najde file-a
require bo vrnil fatal error če ne najde file-a
</pre><br/>";

echo "<h1>ARRAY</h1>";

function izpis($tab)
{
    echo "<pre>";
    print_r($tab); //var_dump($tab) -> Izpiše isto kot print_r() le da vsaki vrednosti doda še podatkovni tip
    echo "</pre>";
}

$tabela = array(
    "prvi" => 33,
    "tretji" => 21,
    "cetrti" => 18,
    5 => 19
);

//IZPIS TABELE
echo "<b>print_r(" . "$" . "tabela)</b> -> ";
izpis($tabela);

//ŠTEVILO ELEMNTOV V TABELI
echo "<b>count(" . "$" . "tabela)</b> -> " . count($tabela) . "<br/><br/>";

//PREVERJANJE VREDNOSTI v tabeli;
$iskana_vrednost = 9999;
echo "<b>in_array($iskana_vrednost, $" . "tabela" . ")</b> -> " . (in_array($iskana_vrednost, $tabela) ? "true" : "false") . "<br/><br/>";
$iskana_vrednost = 19;
echo "<b>in_array($iskana_vrednost, $" . "tabela" . ")</b> -> " . (in_array($iskana_vrednost, $tabela) ? "true" : "false") . "<br/><br/>";

//PREVERJANJE KLJUČA v tabeli;
$iskani_kljuc = 0;
echo "<b>array_key_exists($iskani_kljuc, $" . "tabela" . ")</b> -> " . (array_key_exists($iskani_kljuc, $tabela) ? "true" : "false") . "<br/><br/>";
$iskani_kljuc = "prvi";
echo "<b>array_key_exists('$iskani_kljuc', $" . "tabela" . ")</b> -> " . (array_key_exists($iskani_kljuc, $tabela) ? "true" : "false") . "<br/><br/>";

//ZAMENJAVA KLJUČEV IN VREDNOSTI
echo "<b>array_flip($" . "tabela" . ");</b> ->";
izpis(array_flip($tabela));

//VRNI INDEKSNO TABELO
echo "<b>array_values(" . "$" . "tabela)</b> ->";
izpis(array_values($tabela));

//OBRNI TABELO
echo "<b>array_reverse($" . "tabela" . ");</b> ->";
izpis(array_reverse($tabela));
echo "<i>''!!POMEMBNO!! Vrendnost indeksov se spremenijo od 0 naprej''</i>";

//IZREŽI del tabele
$zacetno_mesto = 2;
$dolzina = 2;
echo "<br/><br/><b>array_slice($" . "tabela, $zacetno_mesto, $dolzina)</b> ->";
izpis(array_slice($tabela, $zacetno_mesto, $dolzina));

echo "<br/>PS fukcije array_flip, array_values, array_reverse, array_slice <strong style='color: darkred'>NE SPREMINAJO TABELE</strong><br/>";

echo "<h3>DODAJANJE ELEMENTOV</h3>";
//DODAJANJE S KLJUČEM
$tabela['drugi'] = 9;
echo "<b>$" . "tabela['drugi'] = 9;</b> //<i style='color: darkgreen'>drugi => 9 se doda na koncu tabele</i><br/><br/>";

echo "<i>''Pri dodajanju brez ključa se novi vrednosti priredi naslednji možni indeks''</i><br/><br/>";
//DODA element v prvo mesto tabele
$tabela[] = 1230;
echo "<b>$" . "tabela[] = 1230;</b> //<i style='color: darkgreen'>6 => 1230 </i><br/><br/>";
$tabela[] = 567;
echo "<b>$" . "tabela[] = 567;</b> //<i style='color: darkgreen'>7 => 567 </i><br/><br/>";
//DODA element v zadnjo mesto tabele
array_push($tabela, 735);
echo "<b>array_push($" . "tabela, 735)</b> //<i style='color: darkgreen'>8 => 735</i><br/>";

izpis($tabela);
//DODA element v prvo mesto tabele
array_unshift($tabela, 9999);
echo "<b>array_unshift($" . "tabela, 9999)</b> //<i style='color: darkgreen'>0 => 9999</i><br/><br/>";
array_unshift($tabela, 919);
echo "<b>array_unshift($" . "tabela, 919)</b> //<i style='color: darkgreen'>0 => 919, 1 => 9999</i><br/><br/>";

echo "<i>''!!
POMEMBNO!! Vsem prejšnim elementom z indeksom (številski ključ) se spremeni indeks 
na naslednjo možno številko, ki smo ji priredili z unshift metodo
glej izpis()''</i>";

izpis($tabela);

echo "<h3>BRISANJE ELEMENTOV</h3>";
//IZBRIŠI zadnji element tabele
array_pop($tabela);
echo "<b>array_pop($" . "tabela)</b> //<i style='color: darkgreen'>5 => 735 izgine </i><br/><br/>";

//IZBRIŠI prvi element tabele
array_shift($tabela);
echo "<b>array_shift($" . "tabela)</b> //<i style='color: darkgreen'>0 => 919 izgine </i><br/><br/>";
echo "<i>''!!POMEMBNO!! Spremembe indeksov''</i>";

//IZBRIŠE element tabele po ključu
echo "<br/><br/><b>unset($" . "tabela['drugi'])</b> //<i style='color: darkgreen'>drugi => 9 izgine </i><br/>";
unset($tabela['drugi']);
izpis($tabela);

//IZBRIŠE del tabele
$zacetno_mesto = 1;
$dolzina = 3;
echo "<br/><b>array_splice($" . "tabela, $zacetno_mesto, $dolzina)</b> ->";
array_splice($tabela, $zacetno_mesto, $dolzina);

izpis($tabela);

echo "<h3>UREJANJE ELEMENTOV</h3>";

//UREDI PO KLJUČU
echo "<h4>Po ključu</h4>";
ksort($tabela);
echo "<b>ksort($" . "tabela)</b> ->";
izpis($tabela);
//REVERSE
krsort($tabela);
echo "<b>krsort($" . "tabela)</b> ->";
izpis($tabela);

//UREDI PO VREDNOSTI (OHRANI KLJUČE)
echo "<h4>Po vrednosti (ohrani ključe)</h4>";
asort($tabela);
echo "<b>asort($" . "tabela)</b> ->";
izpis($tabela);
//REVERSE
arsort($tabela);
echo "<b>arsort($" . "tabela)</b> ->";
izpis($tabela);

//UREDI PO VREDNOSTI (NE OHRANI KLJUČE, SPREMENI V INDEKSNO)
echo "<h4>Po vrednosti (spremeni v indeksno)</h4>";
sort($tabela);
echo "<b>sort($" . "tabela)</b> ->";
izpis($tabela);
//REVERSE
rsort($tabela);
echo "<b>rsort($" . "tabela)</b> ->";
izpis($tabela);

echo "<i>''!!
POMEMBNO!! Tabela se <strong style='color: darkred'>SPREMENI</strong>
, glej izpis()''</i><br/>";

echo "<h5>Primer urejanja 2D tabele (glej v kodo)</h5>";
$ocene_dijakov = array(
    "Kaja" => array(
        "MAT" => 4,
        "SLO" => 4,
        "ANG" => 5
    ),
    "Bosko" => array(
        "MAT" => 3,
        "SLO" => 3,
        "ANG" => 4
    ),
    "Suric" => array(
        "MAT" => 2,
        "SLO" => 2,
        "ANG" => 4
    ),
    "Samaragija" => array(
        "MAT" => 3,
        "SLO" => 4,
        "ANG" => 5
    ),
);
echo "$" . "ocene_dijakov = <br/>";
izpis($ocene_dijakov);
echo "Tabela se po prvo uredila po SLO, nato po MAT in ANG (glej funckijo <b>uredi_po_ocenah()</b>)<br/>";
echo "<pre>
function <b>uredi_po_ocenah</b>($"."a, $"."b)
{
    if ($"."a['SLO'] > $"."b['SLO']) return -1;
    if ($"."a['SLO'] < $"."b['SLO']) return 1;
    if ($"."a['MAT'] > $"."b['MAT']) return -1;
    if ($"."a['MAT'] < $"."b['MAT']) return 1;
    if ($"."a['ANG'] > $"."b['ANG']) return -1;
    if ($"."a['ANG'] < $"."b['ANG']) return 1;
    return 0;
}
</pre>";
echo "<b>uasort($" . "ocene_dijakov, 'uredi_po_ocenah')</b> ->";
function uredi_po_ocenah($a, $b)
{
    if ($a["SLO"] > $b["SLO"]) return -1;
    if ($a["SLO"] < $b["SLO"]) return 1;
    if ($a["MAT"] > $b["MAT"]) return -1;
    if ($a["MAT"] < $b["MAT"]) return 1;
    if ($a["ANG"] > $b["ANG"]) return -1;
    if ($a["ANG"] < $b["ANG"]) return 1;
    return 0;
}
uasort($ocene_dijakov, "uredi_po_ocenah");
izpis($ocene_dijakov);
echo "Obstajajata tudi <b>usort(), uksort()</b><br/>"
?>