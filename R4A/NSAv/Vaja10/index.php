<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Naloga10 - 3.naloga</title>
</head>
<body>
    <?php
    include 'funkcije.php';

    $t1 = napolni();


    echo "<br><br>";

    $t1 = razvrstiNarascajoce($t1);
    function razvrstiNarascajoce($array) {
        sort($array);
        return $array;
    }
    echo "<table border='1' style='border-collapse:collapse;'><tr>";
    foreach ($t1 as $char) {
        if ($char == $t1[0]) {
            echo "<td style='background-color: grey;'>$char</td>";
        } elseif ($char == $t1[count($t1) - 1]) {
            echo "<td style='background-color: blue;'>$char</td>";
        } else {
            echo "<td>$char</td>";
        }
    }
    echo "</tr></table>";

    echo "<br><br>";

    $minChar = $t1[0];
    $maxChar = $t1[count($t1) - 1];
    $minCount = count(array_keys($t1, $minChar));
    $maxCount = count(array_keys($t1, $maxChar));

    echo "Najmanjša črka $minChar se v tabeli ponovi $minCount krat.<br>";
    echo "Največja črka $maxChar se v tabeli ponovi $maxCount krat.<br>";

    

    function narediT2($t1){
        $t2 = [];
        for($i = 65; $i <= 90; $i++){
            $t2[chr($i)] = 0;
        }
    
        $znak = $t1[0];
        $stevec = 0;
        foreach($t1 as $key=>$value){
            if($value == $znak){
                $stevec++;
            }
            else {
                $t2[chr(ord($value)-1)] = $stevec;
                $stevec = 1;
                $znak = $value;
            }
        }
        $t2[$znak] = $stevec;
    
        //print_r($t2);
        return $t2;
    }

    $t2 = narediT2($t1);

    arsort($t2);

    echo "<table border='1' style='border-collapse:collapse;'><tr>";
    foreach ($t2 as $char => $count) {
        echo "<td>$char: $count</td>";
    }
    echo "</tr></table>";
    ?>
</body>
</html>