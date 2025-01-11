<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        require("funkcije.php");

        //$tab = napolni();
        //izpisi1($tab);
        //izpisi2($tab);

        function vpisi() {
            $t1 = [];
            for ($i = 0; $i < 20; $i++) {
                $t1[] = rand(1, 10);
            }
            return $t1;
        }
    function prepisi($t1)
    {
        $t2 = [];
        $sum = array_sum($t1);
        for ($i = 0; $i < count($t1); $i++) {
            $t2[] = $sum - $t1[$i];
        }
        return $t2;
    }
    $t1 = vpisi();
    $t2 = prepisi($t1);

    function izpisi($t1, $t2) {
        
        echo "<table border='1'>";
        echo "<tr><td>Prva tabela</td>";
        foreach ($t1 as $value) {
            echo "<td style='text-align:right;'>$value</td>";
        }
        echo "</tr>";
        echo "<tr><td>Drva tabela</td>";
        foreach ($t2 as $value) {
            echo "<td>$value</td>";
        }
        echo "</tr>";
        echo "</table>";
    }

    izpisi($t1, $t2);

    $t1_reversed = array_reverse($t1);
    $t2_reversed = array_reverse($t2);

    echo "<h2 style='text-align:center;'>Prvi izpis</h2>";
    echo "<table border='1' style='border: 1px solid darkgray; background-color: silver; color: white; margin: 0 auto;'>";
    echo "<tr><td>Prva tabela</td>";
    foreach ($t1_reversed as $value) {
        echo "<td style='text-align:right;'>$value</td>";
    }
    echo "</tr>";
    echo "<tr><td>Drva tabela</td>";
    foreach ($t2_reversed as $value) {
        echo "<td>$value</td>";
    }
    echo "</tr>";
    echo "</table>";

    echo "<hr style='width: 80%; height: 2px; background-color: red; border: none;'>";


    echo "<h2 style='text-align:center;'>Drugi izpis</h2>";
    echo "<table border='1' style='border: 2px dashed darkblue; background-color: lightblue; color: blue; font-weight: bold; margin: 0 auto;'>";
    echo "<tr><td>Prva tabela</td>";
    foreach ($t1_reversed as $value) {
        echo "<td style='text-align:right;'>$value</td>";
    }
    echo "</tr>";
    echo "<tr><td>Drva tabela</td>";
    foreach ($t2_reversed as $value) {
        echo "<td>$value</td>";
    }
    echo "</tr>";
    echo "</table>";






    function vnos() {
        $tabela = [];
        for ($i = 0; $i < 8; $i++) {
            $tabela[] = rand(0, 1);
        }
        return $tabela;
    }

    function prvaPretvorba($tabela) {
        $decimal = 0;
        $n = count($tabela);
        for ($i = 0; $i < $n; $i++) {
            $decimal += $tabela[$i] * pow(2, $n - $i - 1);
        }
        return $decimal;
    }

    $tabela = vnos();
    $decimal = prvaPretvorba($tabela);

    echo "<table border='1' style='margin: 0 auto;'>";
    echo "<tr>";
    echo '<td>Dvojisko stevilo</td>';
    echo '<td>Desetisko stevilo</td>';
    echo "</tr><tr>";

    echo "<td style='text-align:center;'>";
    foreach ($tabela as $bit) {
        echo $bit;
    }
    echo "</td><td style='text-align:center;'>";
    echo $decimal;
    echo '</td>';
    
    echo "</tr>";
    echo "</table>";






    function drugaPretvorba($tabela) {
        $n = count($tabela);
        $isNegative = $tabela[0] == 1;
        $decimal = 0;

        if ($isNegative) {
            for ($i = 0; $i < $n; $i++) {
                $tabela[$i] = $tabela[$i] == 0 ? 1 : 0;
            }
            $carry = 1;
            for ($i = $n - 1; $i >= 0; $i--) {
                $sum = $tabela[$i] + $carry;
                $tabela[$i] = $sum % 2;
                $carry = intdiv($sum, 2);
            }
        }

        for ($i = 0; $i < $n; $i++) {
            $decimal += $tabela[$i] * pow(2, $n - $i - 1);
        }

        return $isNegative ? -$decimal : $decimal;
    }



    $tabela = vnos();
    $decimal2 = drugaPretvorba($tabela);

    echo "<table border='1' style='margin: 0 auto;'>";
    echo "<tr>";
    echo '<td>Dvojisko stevilo</td>';
    echo '<td>Desetisko stevilo</td>';
    echo "</tr><tr>";

    echo "<td style='text-align:center;'>";
    foreach ($tabela as $bit) {
        echo $bit;
    }
    echo "</td><td style='text-align:center;'>";
    echo $decimal2;
    echo '</td>';

    echo "</tr>";
    echo "</table>";
    

    require("podatki.php");
    echo '<br><br><br>';

    function indeksiBarv($tab) {
        $tab3 = [];
        foreach ($tab as $index => $barva) {
            if (!isset($tab3[$barva])) {
                $tab3[$barva] = [];
            }
            $tab3[$barva][] = $index;
        }
        return $tab3;
    }

    $tab3 = indeksiBarv($tab);
    function pokoncniIzpis($tab) {
        $barve = array_count_values($tab);
        echo "<table border='1' style='margin: 0 auto;'>";
        echo "<tr>";
        foreach ($barve as $barva => $count) {
            echo "<th style='text-align:center;'>$barva</th>";
        }
        echo "</tr><tr>";
        foreach ($barve as $barva => $count) {
            echo '<td>';
            for ($i = 0; $i < $count; $i++) {
            echo 1;
            }
            echo '</td>';
        }
        echo "</tr>";
        echo "</table>";
    }

    pokoncniIzpis($tab);

    function lezeciIzpis($tab) {
        $barve = array_count_values($tab);
        echo "<table border='1' style='margin: 0 auto;'>";
        foreach ($barve as $barva => $count) {
            echo "<tr>";
            echo "<th style='text-align:center;'>$barva</th>";
            echo "<td>";
            for ($i = 0; $i < $count; $i++) {
                echo 1;
            }
            echo "</td>";
            echo "</tr>";
        }
        echo "</table>";
    }

    lezeciIzpis($tab);
    ?>
</body>
</html>