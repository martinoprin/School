<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja5</title>
    <style>
        tr:nth-child(even) {
            background-color: rgb(0, 162, 255);
        }

        tr:nth-child(odd) {
            background-color: rgb(187, 230, 255);
        }
    </style>
</head>

<body>
    <?php
    function napolniBesede()
    {
        $tab = [];
        $samoglasniki = ['A', 'E', 'I', 'O', 'U'];
        $soglasniki = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z'];

        $tab = [];
        for ($i = 0; $i < 20; $i++) {
            for ($j = 0; $j < 5; $j++) {
                $st_znakov = rand(5, 12);
                $beseda = '';

                while ($st_znakov > 0) {
                    $beseda .= $soglasniki[array_rand($soglasniki)];
                    $st_znakov--;
                    if (!($st_znakov >= 0)) break;
                    $beseda .= $samoglasniki[array_rand($samoglasniki)];
                    $st_znakov--;
                }
                $tab[$i][$j] = $beseda;
            }
        }
        return $tab;
    }

    function izpisiTabelo($t)
    {
        $barve = ["#FF0000", "#00FF00", "#0000FF", "#00FFFF"];
        echo '<table>';
        for ($i = 0; $i < 20; $i++) {
            echo '<tr>';
            for ($j = 0; $j < 5; $j++) {
                echo '<td style="background-color:' . $barve[array_rand($barve)] . ';">';
                echo $t[$i][$j];
                echo '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
    }

    //$t = napolniBesede();
    //izpisiTabelo($t);

    echo '<pre>';
    /*
    $d = array(
        "1431" => array("ime" => "Rok", "natocenoGorivo" => array(55, 54, 36, 45, 41)),
        "1488" => array("ime" => "Vid", "natocenoGorivo" => array(70, 72)),
        "1492" => array("ime" => "Luka", "natocenoGorivo" => array(38, 42, 46, 37, 40, 40))
    );
    $d[2231] = array("ime" => "Martin", "natocenoGorivo" => array(30));
    $d[2231]["natocenoGorivo"][] = 41;

    print_r($d);
    foreach ($d as $key => $value) {
        if (count($value["natocenoGorivo"]) >= 3) {
            echo "Sifra kupca=$key Ime=" . $value["ime"] . " Natočeno gorivo: " . implode(" ", $value["natocenoGorivo"]) . "<br>";
        }
    }



    $tab = array(
        "Januar" => array(),
        "Februar" => array(),
        "Marec" => array(),
        "April" => array(),
        "Maj" => array(),
        "Junij" => array()
    );
    foreach ($tab as $key => $value) {
        for ($i = 0; $i < 6; $i++) {
            $tab[$key][] = rand(10, 20);
        }
    }

    echo '<table border="1" style="border-collapse:collapse;">';
    foreach ($tab as $key => $value) {
        echo '<tr>';
        echo '<td>' . $key . '</td>';
        foreach ($value as $v) {
            echo '<td>' . $v . '</td>';
        }
        echo '</tr>';
    }
    echo '</table>';



    foreach ($tab as $key => $value) {
        $minValue = min($value);
        foreach ($value as $index => $v) {
            if ($v == $minValue) {
                unset($value[$index]);
            }
        }
        $tab[$key] = $value;
    }
    echo '<br>';

    echo '<table border="1" style="border-collapse:collapse;">';
    foreach ($tab as $key => $value) {
        echo '<tr>';
        echo '<td>' . $key . '</td>';
        for ($i = 0; $i < 6; $i++) {
            if (isset($value[$i])) {
                echo '<td>' . $value[$i] . '</td>';
            } else {
                echo '<td>N/A</td>';
            }
        }
        echo '</tr>';
    }
    echo '</table>';

    $tab2 = [];
    $povprecje = 0;
    foreach ($tab as $key => $value) {
        $povprecje += array_sum($value);
    }
    $povprecje /= count($tab);

    foreach ($tab as $key => $values) {
        if (array_sum($values) < $povprecje) {
            $tab2[$key] = $values;
            unset($tab[$key]);
        }
    }

    echo '<br>';

    echo '<table border="1" style="border-collapse:collapse;">';
    foreach ($tab2 as $key => $value) {
        echo '<tr>';
        echo '<td>' . $key . '</td>';
        foreach ($value as $v) {
            echo '<td>' . $v . '</td>';
        }
        echo '</tr>';
    }
    echo '</table>';
    echo '<br>';
    echo '<table border="1" style="border-collapse:collapse;">';
    foreach ($tab as $key => $value) {
        echo '<tr>';
        echo '<td>' . $key . '</td>';
        foreach ($value as $v) {
            echo '<td>' . $v . '</td>';
        }
        echo '</tr>';
    }
    echo '</table>';
    */

    $tab = array("bela", "modra", "bela", "rdeča", "zelena", "bela", "rdeča", "zelena", "bela");

    function bitnaSlika($tab) {
        $tab2 = [];
        foreach ($tab as $barva) {
            $tab2[$barva][] = 1;
        }
        return $tab2;
    }

    print_r(bitnaSlika($tab));

    function stevecBarv($tab) {
        $tab3 = [];
        foreach ($tab as $barva) {
            if (isset($tab3[$barva])) {
                $tab3[$barva]++;
            } else {
                $tab3[$barva] = 1;
            }
        }
        return $tab3;
    }

    function izpisiBitnaSlika($tab) {
        echo '<table border="1" style="border-collapse:collapse;">';
        foreach ($tab as $barva => $values) {
            echo '<tr>';
            echo '<td>' . $barva . '</td>';
            foreach ($values as $value) {
                echo '<td>' . $value . '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
    }

    function izpisiStevecBarv($tab) {
        echo '<table border="1" style="border-collapse:collapse;">';
        foreach ($tab as $barva => $count) {
            echo '<tr>';
            echo '<td>' . $barva . '</td>';
            echo '<td>' . $count . '</td>';
            echo '</tr>';
        }
        echo '</table>';
    }


    izpisiBitnaSlika(bitnaSlika($tab));
    izpisiStevecBarv(stevecBarv($tab));
?>
</body>

</html>