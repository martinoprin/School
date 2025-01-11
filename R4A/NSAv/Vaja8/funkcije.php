<?php
    function napolni()
    {
        $n = rand(2, 8);
        $tab = [];
        for ($i = 0; $i < $n; $i++) {
            for ($j = 0; $j < $n; $j++) {
                if ($i == $j) {
                    $tab[$i][$j] = '*';
                } else if ($i < $j) {
                    $tab[$i][$j] = '0';
                } else if ($i > $j) {
                    $tab[$i][$j] = "$n";
                }
            }
        }
        return $tab;
    }


    function izpisi1($tab)
    {
        echo "Tabela velikosti " . count($tab) . "x" . count($tab);
        echo '<table style="border: 1px solid black; border-collapse: collapse;">';
        for ($i = 0; $i < count($tab); $i++) {
            echo '<tr>';
            for ($j = 0; $j < count($tab[0]); $j++) {
                echo '<td style="border: 1px solid black; height: 30px; width: 30px; text-align:center;">' . $tab[$i][$j] . '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
    }


    function izpisi2($tab)
    {
        $bc1 = sprintf('#%06X', mt_rand(0, 0xFFFFFF));
        $bc2 = sprintf('#%06X', mt_rand(0, 0xFFFFFF));
        $bc3 = sprintf('#%06X', mt_rand(0, 0xFFFFFF));
        
        echo "Tabela velikosti " . count($tab) . "x" . count($tab);
        echo '<table style="border: 1px solid black; border-collapse: collapse;">';
        for ($i = 0; $i < count($tab); $i++) {
            echo '<tr>';
            for ($j = 0; $j < count($tab[0]); $j++) {
                if ($i == $j) {
                    $bgColor = $bc1;
                } elseif ($i < $j) {
                    $bgColor = $bc2;
                } else {
                    $bgColor = $bc3;
                }
                echo '<td style="border: 1px solid black; height: 30px; width: 30px; text-align:center; background-color:' . $bgColor . ';">' . $tab[$i][$j] . '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
    }
?>