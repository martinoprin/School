<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Vaja 7</title>
</head>

<body>
    <?php

    function danVtabeli()
    {
        $dnevi = ["PONEDELJEK", "TOREK", "SREDA", "ČETRTEK", "PETEK"];
        define("BESEDA", $dnevi[rand(0, 4)]);
        $dolzina = mb_strlen(BESEDA);

        echo '<table style="border-collapse: collapse">';
        for ($i = 0; $i < $dolzina; $i++) {
            echo '<tr>';
            for ($j = 0; $j < $dolzina; $j++) {
                if ($j == $i) {
                    echo '<td style="border: 1px solid black">' . mb_substr(BESEDA, $i, 1) . '</td>';
                } else {
                    echo '<td style="border: 1px solid black"></td>';
                }
            }
            echo '</tr>';
        }
        echo '</table>';
    }

    //danVtabeli();

    function enakPodniz($x, $y, $n)
    {
        for ($i = 0; $i <= mb_strlen($x) - $n; $i++) {
            $podnizX = mb_substr($x, $i, $n);
            if (mb_strpos($y, $podnizX) !== false) {
                return true;
            }
        }
        return false;
    }

    $x = "aec";
    $y = "aecfjksdah";
    $n = 3;
    //echo enakPodniz($x, $y, $n);

    function podobnost($beseda1, $beseda2)
    {
        $n = 0;
        for ($i = 0; $i < mb_strlen($beseda1); $i++) {
            for ($j = 0; $j < mb_strlen($beseda2); $j++) {
                $podniz = mb_substr($beseda1, $i, 1);
                if ($beseda1[$i] == $beseda2[$j]) {
                    $n++;
                }
            }
        }
        echo $n >= ceil(mb_strlen($beseda1) / 2);
    }

    //echo podobnost("maraton", "omara");

    function aliSemZaspan()
    {
        $randomCodePoint = rand(128000, 129000);
        $randomChar = mb_chr($randomCodePoint);
        echo ord($randomChar);
        $sleepyFaces = [
            "\u{1F60C}",
            "\u{1F614}",
            "\u{1F62A}",
            "\u{1F924}",
            "\u{1F634}",
            "\u{1FAE9}"
        ];

        echo "Naključni znak: " . $randomChar . "<br>";

        if (in_array($randomChar, $sleepyFaces)) {
            echo "Danes sem zaspan/a";
        } else {
            echo "Nisem zaspan/a";
        }
    }

    //aliSemZaspan();


    $randomNumber = rand(10000, 99999);

    $digits = str_split($randomNumber);

    $minDigit = min($digits);
    $maxDigit = max($digits);

    $minCount = array_count_values($digits)[$minDigit];
    $maxCount = array_count_values($digits)[$maxDigit];

    echo "Najmanjša števka v številu je $minDigit in se ponovi $minCount krat.";
    echo '<br>';
    echo "Največja števka v številu je $maxDigit in se ponovi $maxCount krat.";
    echo '<br>';



    $n = rand(10, 500);

    $binary = decbin($n);

    $zeroBits = substr_count($binary, '0');


    if ($zeroBits == 0) {
        echo "Število bitov z vrednostjo 0 = 0.";
    } elseif ($zeroBits <= 2) {
        echo "Število bitov z vrednostjo 0 <= 2.";
    } elseif ($zeroBits <= 4) {
        echo "Število bitov z vrednostjo 0 <= 4.";
    } else {
        echo "Število ima vsaj 5 bitov z vrednostjo 0.";
    }

    $vrtec = array(
        "14" => array("ime" => "Luka", "igraca" => array("žoga", "lopar", "kocke")),
        "23" => array("ime" => "Jana", "igraca" => array("Barbika", "medvedek", "barvice")),
        "31" => array("ime" => "Peter", "igraca" => array("kolo", "žoga")),
        "44" => array("ime" => "Vesna", "igraca" => array("kocke", "barvice", "žoga", "palčke"))
    );

    $vrtec["13"] = array("ime" => "Martin", "igraca" => array("barvice", "medvedek"));
    function izpisVrtec($vrtec)
    {
        foreach ($vrtec as $id => $otrok) {
            echo '<div style="background-color: lightblue; width:250px;">';
            echo '<strong>' . $otrok["ime"] . '</strong> ';
            echo implode(" ", $otrok["igraca"]);
            echo '</div>';
        }
    }

    izpisVrtec($vrtec);

    function imaIgraco($vrtec, $igraca)
    {
        foreach ($vrtec as $otrok) {
            if (in_array($igraca, $otrok["igraca"])) {
                echo $otrok["ime"] . "<br>";
            }
        }
    }

    imaIgraco($vrtec, "medvedek");



    function nimaIgrace($vrtec, $igraca)
    {
        foreach ($vrtec as $otrok) {
            if (!(in_array($igraca, $otrok["igraca"]))) {
                echo $otrok["ime"] . "<br>";
            }
        }
    }

    nimaIgrace($vrtec, "barvice");


    ?>
</body>

</html>