<?php
function dodajTocke(&$tocke)
{
    for ($i = 0; $i < 5; $i++) {
        $x = rand(-9, 9);
        $y = rand(-9, 9);
        if ($x >= 0 && $y >= 0) {
            $tocke['red'][] = [$x, $y];
        } elseif ($x >= 0 && $y < 0) {
            $tocke['green'][] = [$x, $y];
        } elseif ($x < 0 && $y >= 0) {
            $tocke['blue'][] = [$x, $y];
        } else {
            $tocke['silver'][] = [$x, $y];
        }
    }
}

function izpisiTocke($tocke)
{
    echo "<table style='border-collapse:collapse; border: 0px solid black;'>";
    foreach ($tocke as $barva => $koordinate) {
        echo "<tr>";
        if (is_array($koordinate)) {
            foreach ($koordinate as $tocka) {
                echo "<td style='color: $barva; border-collapse:collapse; border: 1px solid black; padding: 7px;'>($tocka[0], $tocka[1])</td>";
            }
        }
        echo "</tr>";
    }
    echo "</table>";
}



function izpisi1($amerika)
{
    ksort($amerika);

    echo "<table style='border-collapse:collapse; border: 1px solid black;'>";
    echo "<tr><th>Ime Kraja</th><th>Kratica države</th><th>Število prebivalcev</th></tr>";
    foreach ($amerika as $imeKraja => $kraj) {
        echo "<tr>";
        echo "<td style='border: 1px solid black; padding: 7px;'>" . $imeKraja . "</td>";
        echo "<td style='border: 1px solid black; padding: 7px;'>" . $kraj['drzava'] . "</td>";
        echo "<td style='border: 1px solid black; padding: 7px;'>" . $kraj['prebivalci'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
}


function ustvariTabeloDrzav($amerika) {
    uasort($amerika, function($a, $b) {
        $drzavaComparison = strcmp($a['drzava'], $b['drzava']);
        if ($drzavaComparison === 0) {
            return $b['prebivalci'] - $a['prebivalci'];
        }
        return $drzavaComparison;
    });

    return $amerika;
}



function izpis2($amerika) {
    $drzave = array();
    foreach ($amerika as $kraj => $info) {
        $drzave[$info['drzava']][] = array('kraj' => $kraj, 'prebivalci' => $info['prebivalci']);
    }

    foreach ($drzave as $drzava => $kraji) {
        echo "<table border='1'>";
        echo "<tr><th colspan='2'>$drzava</th></tr>";
        foreach ($kraji as $kraj) {
            echo "<tr>";
            echo "<td>{$kraj['kraj']}</td>";
            echo "<td>{$kraj['prebivalci']}</td>";
            echo "</tr>";
        }
        echo "</table><br>";
    }
}
function isci($amerika, $zacetnica) {
    echo 1;
    echo "<table style='border-collapse:collapse; border: 1px solid black;'>";
    echo "<tr><th>Ime Kraja</th><th>Kratica države</th><th>Število prebivalcev</th></tr>";
    foreach ($amerika as $imeKraja => $kraj) {
        if (stripos($imeKraja, $zacetnica) === 0) {
            echo "<tr>";
            echo "<td style='border: 1px solid black; padding: 7px;'>" . $imeKraja . "</td>";
            echo "<td style='border: 1px solid black; padding: 7px;'>" . $kraj['drzava'] . "</td>";
            echo "<td style='border: 1px solid black; padding: 7px;'>" . $kraj['prebivalci'] . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";
}



?>
