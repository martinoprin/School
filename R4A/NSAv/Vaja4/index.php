<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $t = [];
        for($i=0;$i<40;$i++){
            $t[$i] = rand(0, 255);
            echo $t[$i] . ' ';
        }
        echo '<br>';
        echo 'ASCII kode velikih črk so na mestih: ';
        for($i=0;$i<40;$i++){
            if($t[$i] >= ord('A') && $t[$i] <= ord('Z')){
                echo $i . ' ';
            }
        }
        echo '<br>';
        echo 'ASCII kode malih črk so na mestih: ';
        for($i=0;$i<40;$i++){
            if($t[$i] >= ord('a') && $t[$i] <= ord('z')){
                echo $i . ' ';
            }
        }
        echo '<br>';
        echo 'ASCII kode ostalih znakov so na mestih: ';
        for($i=0;$i<40;$i++){
            if($t[$i] < ord('A') || $t[$i] > ord('Z') && $t[$i] < ord('a') || $t[$i] > ord('z') ){
                echo $i . ' ';
            }
        }

        $velike = [];
        $male = [];
        $ostalo = [];

        for($i=0;$i<40;$i++){
            if($t[$i] < ord('A') || $t[$i] > ord('Z') && $t[$i] < ord('a') || $t[$i] > ord('z') ){
                array_push($ostalo, $i);
            }
            else if($t[$i] >= ord('A') && $t[$i] <= ord('Z')){
                array_push($velike, $i);
            }
            else {
                array_push($male, $i);
            }
        }
        echo '<br>';


        function generateRandomArray($size = 10, $min = 100, $max = 400) {
            $array = [];
            for ($i = 0; $i < $size; $i++) {
                $array[] = rand($min, $max);
            }
            return $array;
        }
        
        $tab = generateRandomArray();
        

        $povprecje = array_sum($tab) / count($tab);
        
        echo "<p>Vsebina tabele:</p><table style='border-collapse: collapse;'><tr>";
        foreach ($tab as $value) {
            if ($value < $povprecje) {
                echo "<td style='color: red; border-collapse: collapse; border: 1px solid black;'>$value</td>";
            } else {
                echo "<td style='color: blue; border-collapse: collapse; border: 1px solid black;'>$value</td>";
            }
        }
        echo "</tr></table>";
        
        
        $tab = array_filter($tab, function($value) use ($povprecje) {
            return $value >= $povprecje;
        });
        
        sort($tab);
        echo "<table style='border-collapse: collapse;'><tr>";
        foreach ($tab as $value) {
            echo "<td style='color: blue; border: 1px solid black;'>$value</td>";
        }
        echo "</tr></table>";

        $deljivoZ23 = [];
        $poskusi = 0;

        do {
            $poskusi++;
            $randomNumber = rand(1, 1000);

            if ($randomNumber % 23 === 0) {
                $deljivoZ23[] = $randomNumber;
            }
        } while (count($deljivoZ23) < 10);

        $lastNumber = $deljivoZ23[9];
        echo "V $poskusi poskusu je dobljeno število $lastNumber<br>";

        foreach ($deljivoZ23 as $index => $value) {
            echo $value . " ";
        }

        function jePalindrom($niz) {
            $niz = strtolower($niz);
            $nizBrezZnakov = '';
            
            for ($i = 0; $i < strlen($niz); $i++) {
                $znak = $niz[$i];
                if (($znak >= 'a' && $znak <= 'z') || ($znak >= '0' && $znak <= '9')) {
                    $nizBrezZnakov .= $znak;
                }
            }
        
            $dolzina = strlen($nizBrezZnakov);
            for ($i = 0; $i < $dolzina / 2; $i++) {
                if ($nizBrezZnakov[$i] !== $nizBrezZnakov[$dolzina - $i - 1]) {
                    return false;
                }
            }
            return true;
        }

        echo jePalindrom ('Peter pazi se, če si za pretep!');
    ?>
</body>
</html>