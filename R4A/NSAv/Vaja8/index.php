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
    // Reverse the arrays
    $t1_reversed = array_reverse($t1);
    $t2_reversed = array_reverse($t2);

    // First table display
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

    // Horizontal line
    echo "<hr style='width: 80%; height: 2px; background-color: red; border: none;'>";

    // Second table display
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
    ?>
</body>
</html>