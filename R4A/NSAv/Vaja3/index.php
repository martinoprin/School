<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <style>
        .rdece{
            color: red;
            font-weight: bold;
            font-size: 12px;
        }
        .modro{
            color: blue;
            font-size: 16px;
        }
        .zeleno{
            color: green;
            font-size: 10px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }
        td {
            border: 2px solid darkblue;
            text-align: right;
        }
        .soda {
            font-weight: bold;
            font-size: 16px;
            color: green;
        }
        .liha {
            font-weight: bold;
            font-style: italic;
            font-size: 12px;
            color: blue;
        }
    </style>
    <?php
        $t = array();
        $velika_crka = rand(65, 90);
        for($i=0;$i<3;$i++){
            $mala_crka = rand(97, 122);
            $t[$i] = $mala_crka;
            /*if(($mala_crka-32)==$velika_crka){
                echo "ista crka";
            } */
        }
        switch ($velika_crka){
            case $t[0]-32==$velika_crka:

            case $t[1]-32==$velika_crka:

            case $t[2]-32==$velika_crka:
                echo '<span class="rdece">'.chr($velika_crka).chr($t[0]).chr($t[1]).chr($t[2]). '</span>';
                break;
            default:
                //echo '<span class="modro">' . chr($velika_crka) . '</span><span class="zeleno">' . chr($t[0]) . chr($t[1]) . chr($t[2]) . "</span></span>"';
                echo '<span class="modro">' . chr($velika_crka) . '</span><span class="zeleno">' . chr($t[0]) . chr($t[1]) . chr($t[2]) . '</span>';
                break;
        }

    $a = rand(1, 500);
    $b = rand(1, 500);

    $obseg = 2 * ($a + $b);
    $ploscina = $a * $b;
    $diagonala = sqrt(pow($a, 2) + pow($b, 2));

    if ($ploscina < 10000) {
        $font_size = 12;
    } elseif ($ploscina <= 90000) {
        $font_size = 24;
    } else {
        $font_size = 36;
    }

    echo "<div style='font-size: {$font_size}px'>";
    echo "Stranica a: " . number_format($a, 2, ',', '.') . "<br>";
    echo "Stranica b: " . number_format($b, 2, ',', '.') . "<br>";
    echo "Obseg: " . number_format($obseg, 2, ',', '.') . "<br>";
    echo "Ploščina: " . number_format($ploscina, 2, ',', '.') . "<br>";
    echo "Diagonala: " . number_format($diagonala, 2, ',', '.') . "<br>";
    echo "</div>";

    $znesek = rand(1000, 500000);

    $obdobje = rand(1, 36);

    if ($obdobje <= 1) {
        $obrestna_mera = 2.30;
    } elseif ($obdobje <= 3) {
        $obrestna_mera = 3.00;
    } elseif ($obdobje <= 6) {
        $obrestna_mera = 3.60;
    } elseif ($obdobje <= 12) {
        $obrestna_mera = 4.00;
    } elseif ($obdobje <= 24) {
        $obrestna_mera = 4.25;
    } else {
        $obrestna_mera = 4.50;
    }

    if ($obdobje >= 12) {
        if ($znesek >= 25000 && $znesek <= 50000) {
            $stimulativne_obresti = 0.25;
        } elseif ($znesek >= 50001 && $znesek <= 100000) {
            $stimulativne_obresti = 0.35;
        } elseif ($znesek >= 100001 && $znesek <= 200000) {
            $stimulativne_obresti = 0.40;
        } elseif ($znesek > 200000) {
            $stimulativne_obresti = 0.50;
        } else {
            $stimulativne_obresti = 0;
        }
    } else {
        $stimulativne_obresti = 0;
    }

    $letne_obresti = $obrestna_mera + $stimulativne_obresti;

    $koncni_znesek = $znesek * (1 + ($letne_obresti / 100) * ($obdobje / 12));

    $znesek_formatiran = number_format($znesek, 2, ',', '.');
    $koncni_znesek_formatiran = number_format($koncni_znesek, 2, ',', '.');

    echo "<p>Znesek vezave: " . $znesek_formatiran . "€</p>";
    echo "<p>Obdobje vezave: " . $obdobje . " mesecev</p>";
    echo "<p>Končni znesek: " . $koncni_znesek_formatiran . "€</p>";

    echo "<table>";
    for ($i = 0; $i < 10; $i++) {
        echo "<tr>";
        for ($j = 0; $j < 12; $j++) {
            $stevilo = rand(10, 800);
            if ($stevilo % 2 == 0) {
                echo "<td class='soda'>$stevilo</td>";
            } else {
                echo "<td class='liha'>$stevilo</td>";
            }
        }
        echo "</tr>";
    }
    echo "</table>";

    $i = 0;
    while ($i <= 255) {
        $barva = sprintf("#FF00%02X", $i);
        echo "<p style='color: $barva;'>Zdravo PHP</p>";
        $i++;
    }

    do {
        $barva = sprintf("#FF00%02X", $i);
        echo "<p style='color: $barva;'>Zdravo PHP</p>";
        $i++;
    } while ($i <= 255);

    for ($i = 0; $i <= 255; $i++) {
        $barva = sprintf("#FF00%02X", $i);
        echo "<p style='color: $barva;'>Zdravo PHP</p>";
    }




    function generirajNakljucneCrke($numElements = 10) {
        $crke = [];
        for ($i = 0; $i < $numElements; $i++) {
            $crke[] = chr(rand(65, 90));
        }
        return $crke;
    }

    $nizCrk = generirajNakljucneCrke();

    echo "b) Hitri izpis: " . implode(", ", $nizCrk) . "<br>";

    $joinedString = implode("", $nizCrk);
    echo "c) Združeni niz: $joinedString<br>";

    function generateRandomHexColor() {
        return sprintf("#FF%03X", rand(0x0000, 0x0FFF));
    }   
    
    function generateRandomRGBColor() {
        $r = 255; 
        $g = rand(0, 15); 
        $b = rand(0, 255); 
    
        return "rgb($r," . ($g * 16) . ",$b)";
    }

    echo "d) Naključne barve:<br>";
    do {
        $randomColor = generateRandomRGBColor();
        echo "<span style='color: $randomColor;'>$joinedString</span><br>";
    } while ($randomColor !== "#FF00F0");


    echo "e) Prvi izpis (while):<br>";
    $i = 0;
    while ($i < 1) {
        echo implode(", ", $nizCrk) . "<br>";
        $i++;
    }

    echo "e) Drugi izpis (do-while):<br>";
    $i = 0;
    do {
        echo implode(", ", $nizCrk) . "<br>";
        $i++;
    } while ($i < 1);

    echo "e) Tretji izpis (for):<br>";
    for ($i = 0; $i < 1; $i++) {
        echo implode(", ", $nizCrk) . "<br>";
    }


    ?>
</body>
</html>