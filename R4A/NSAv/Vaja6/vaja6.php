<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vaja 6</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
        $x = rand(3, 9);
        $y = rand(0, 1);


        function stopnice($y, $x){
            echo '<table>';
            if($y){ //stopnice grejo gor
                for($i = $x; $i > 0; $i--){
                    echo '<tr>';
                        for($j = 1; $j <= $i; $j++){
                            if($j == $i){
                                echo '<td style="border-right: 1px solid black; border-bottom: 1px solid black;">' . $i . '</td>';
                            }
                            else{
                                echo '<td></td>';
                            }
                        }
                    echo '</tr>';
                }
            }
            else if(!($y)){ //stopnice grejo dol
                for($i = 1; $i <= $x; $i++){
                    echo '<tr>';
                        for($j = 1; $j <= $i; $j++){
                            if($j == $i){
                                echo '<td style="border-left: 1px solid black; border-bottom: 1px solid black;">' . $i . '</td>';
                            }
                            else{
                                echo '<td></td>';
                            }
                        }
                    echo '</tr>';
                }
            }
            echo '</table>';
        }

        //stopnice($y, $x);

        function sahovnica(){
            echo '<table style="border-collapse: collapse;">';
            $sahovnica = [];
            for($i = 8; $i > 0; $i--){
                echo '<tr>';
                    for($j = ord('A'); $j < ord('A')+ 8; $j++){
                        echo '<td>' . chr($j) . $i . '</td>';
                    }
            }
        }
        //sahovnica();

        function crka(){
            $crka = rand(ord('G'), ord('N'));
            echo "Črka = " . chr($crka) . '<br>';
            echo "Predhodnih 5 črk: ";
            for($i = 5; $i > 0; $i--){
                echo '<span style="color: red;">' . chr($crka-$i) .  " </span>";
            }
            echo '<br>';
            echo "Naslednjih 5 črk: ";
            for($i = 1; $i <= 5; $i++){
                echo '<span style="color: blue;">' . chr($crka+$i) .  " </span>";
            }
        }
        //crka();

        function sestej($a = 0, $b = 0, $c = 0, $d = 0, $e = 0, $f = 0){
            $sum = $a + $b + $c + $d + $e + $f;
            return $sum;
        }

        //echo sestej();

        function izpisiPrafaktorje($number=1) {
            echo "Prafaktorji števila $number so: ";
            for ($i = 2; $i <= $number; $i++) {
                while ($number % $i == 0) {
                    echo $i . " ";
                    $number /= $i;
                }
            }
        }

        //izpisiPrafaktorje(24);

        function vrniNiz($a, $b){
            $zacetek = ($a - ord('A')) % 26 + ord('A');
            $konec = ($b - ord('A')) % 26 + ord('A');

            $niz = [];
            if ($zacetek <= $konec) {
            for ($i = $zacetek; $i <= $konec; $i++) {
                $niz[] = chr($i);
            }
            } else {
            for ($i = $zacetek; $i <= ord('Z'); $i++) {  //ce je konec manjsi od zacetke najprej izpise vse do Z
                $niz[] = chr($i);
            }
            for ($i = ord('A'); $i <= $konec; $i++) {  //od A do konca ki je manjsi od zacetka
                $niz[] = chr($i);
            }
            }

            return $niz;
        }

        function izpisiNiz($niz){
            $velikost = 10;
            foreach ($niz as $i) {
                echo '<span style="font-size: '. $velikost. 'px;">' . $i . ' </span>' ;
                $velikost++;
            }
        }

        //izpisiNiz(vrniNiz(129310,129309));
        /*$x = "kava
            banana
            slaščičarnas
            vroča čokolada 4€ čaj 2€
            ananas
            ";
        */

        function vrniRazlicne($x){
            $niz = [];
            $znaki = mb_str_split($x);

            foreach ($znaki as $i){
                if(!(in_array($i, $niz)))
                    $niz[] = $i;
            }

            return $niz;
        }

        //print_r(vrniRazlicne($x));

        function enakPodniz($x, $y, $n){

            $znakiX = mb_str_split($x);
            $podniz = '';
            for($i = 0; $i < strlen($x); $i++){
                echo $znakiX[$i];
                for($j = 0; $j < $n; $j++){
                    $podniz .= $znakiX[$i+$j];
                    echo $podniz;
                }
            }
            
        }

        $x = "abcdefghijk";
        $y = "evalvacija";
        $n = 2;
        enakPodniz($x, $y, $n);

        //echo substr("abcde", 3, 3);  //tko nardis substring od do


    
    ?>
</body>
</html>