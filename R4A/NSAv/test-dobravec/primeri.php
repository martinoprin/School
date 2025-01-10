<?php
echo "<h3>Naloga 2</h3>";
$urnik = array(
    "pon" => array("mat", "slo", "slo", "rac", "fiz", "pra", "pra"),
    "tor" => array("npb", "npb", "nik", "nik", "svz", "svz", "slo"),
    "sre" => array("mat", "mat", "anj", "rac"),
    "cet" => array("mat", "zgo", "geo", "slo", "anj", "pra", "pra", "svz"),
    "pet" => array("fiz", "zgo", "nik", "npb", "npb")
);
echo "$" . "urnik=array(<br/>";
foreach ($urnik as $dan => $ure) {
    echo "&nbsp;&nbsp;&nbsp;'$dan' => ";
    print_r($ure);
    echo ($dan != "pet" ? "," : "") . "<br/>";
}
echo ");<br/>";
echo "<br/>a) Tabela ima 2 dimenziji";

echo "<br/>b) count($" . "urnik) vrne " . count($urnik);

echo "<br/>c) count($" . "urnik['cet']) vrne " . count($urnik['cet']);

echo "<br/>d) echo $" . "urnik['cet'][3] vrne " . $urnik['cet'][3];

echo "<br/>e) var_dump(" . "urnik['pon'][1]) vrne ";
var_dump($urnik['pet'][1]);

echo "<h3>Naloga 3</h3>";
function izpis_ur($tab)
{
    //CSS
    $td_style = "border: 0.1rem solid black;
    padding: .2rem 1rem .2rem .5rem;";
    //HTML
    echo "<table style='border-collapse: collapse'>";
    echo "<tr>
        <td style='$td_style'>Dan</th>
        <td style='$td_style'>Število ur</th>
    </tr>";
    //SPREMENLJIVKA ZA SODE VRSTICE
    foreach ($tab as $dan => $ure) {
        echo "<tr>
            <td style='$td_style'>$dan</td>
            <td style='$td_style'>" . (count($ure)) . "</td>
        </tr>";
    }
    echo "</table>";
}
izpis_ur($urnik);

echo "<h3>Naloga 4</h3>";
echo "a) Dan in ura ko je SLO:<br/><br/>";
foreach ($urnik as $dan => $ure) {
    $zadetki = 0;
    foreach ($ure as $index => $ura) {
        if ($ura == "slo") {
            if ($zadetki == 0) {
                echo "$dan: ";
            } else echo ", ";
            $zadetki++;
            echo $index + 1;
        }
    }
    if ($zadetki > 0) echo "<br/>";
}
echo "<h3>Naloga 5</h3>";
echo "b) HTML izpis tabele<br/><br/>";
function izpis_tabele_urnika($tab)
{
    //CSS
    $ozadje_druge_vrstice = "background-color: #f2f2f2";
    $td_style = "color: #00bb00;border: 0.1rem solid black;
    text-align: center;padding: .25rem 1.25rem;";
    //HTML
    echo "<table style='border-collapse: collapse'>";
    echo "<tr><th style='$td_style'>Dan</th>";
    for ($i = 1; $i <= 8; $i++)
        echo "<th style='$td_style'>$i.</th>";
    echo "</tr>";
    //SPREMENLJIVKA ZA SODE VRSTICE
    $kateri_dan = 0;
    foreach ($tab as $dan => $ure) {
        echo "<tr style='" . ($kateri_dan % 2 == 0 ? $ozadje_druge_vrstice : "") . "'>
        <th style='$td_style'>$dan</th>";
        for ($i = 0; $i < 8; $i++) {
            if (!isset($ure[$i])) {
                echo "<td style='$td_style'>-</td>";
            } else {
                echo "<td style='$td_style'>" . $ure[$i] . "</td>";
            }
        }
        echo "</tr>";
        $kateri_dan++;
    }
    echo "</table>";
}
izpis_tabele_urnika($urnik);
