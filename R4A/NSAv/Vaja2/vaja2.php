<html>
<head>
    
</head>
<body>
    <?php
    $value = 1;
    echo "<table border='0' style='text-align: right; border:none; border-collapse: collapse; border-bottom: 1px solid black'>";
    for ($i = 0; $i < 10; $i++) {
        echo "<tr>";
        for ($j = 0; $j < 10; $j++) {
            echo '<td style="border-bottom: 1px solid black; text-align: right; width: 50px;">' . $value . '</td>';
            $value = 2 + $value;
        }
        echo "</tr>";
    }
    echo "</table>";

    function sgn($x) {
        if ($x < 0) {
            return -1;
        } elseif ($x > 0) {
            return 1;
        } else {
            return 0;
        }
    }
    echo '<br><table style="border-collapse: collapse;">';
    echo '<tr>
            <th style="text-align: right; border-right: 1px solid black; border-bottom: 1px solid black;">x</th>
            <th style="text-align: right; border-bottom: 1px solid black;">sgn(x)</th>
        </tr>';
    
    for ($x = -10; $x <= 10; $x++) {
        echo '<tr>
                <td style="border-right: 1px solid black; text-align: right;">' . $x . '</td>
                <td style="text-align: right;">' . sgn($x) . '</td>
        </tr>';
    }
    echo '</table><br>';

    define("PI", 3.14);

    $r = rand(-10, 100);
    
    if ($r < 0) {
        echo "Takega kroga ni.<br>";
    } elseif ($r == 0) {
        echo "To je točka.<br>";
    } else {
        $obseg_lastna = 2 * PI * $r;
        $ploscina_lastna = PI * $r * $r;
    
        $obseg_vgrajena = 2 * pi() * $r;
        $ploscina_vgrajena = pi() * $r * $r;
    
        echo "Polmer: $r<br>";
        echo "Obseg (lastna konstanta PI): " . number_format($obseg_lastna, 6) . "<br>";
        echo "Ploščina (lastna konstanta PI): " . number_format($ploscina_lastna, 6) . "<br>";
        echo "Obseg (vgrajena funkcija pi()): " . number_format($obseg_vgrajena, 6) . "<br>";
        echo "Ploščina (vgrajena funkcija pi()): " . number_format($ploscina_vgrajena, 6) . "<br>";
    }
    ?>
</table>
</body>
</html>
