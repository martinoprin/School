<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vaja 7</title>
</head>
<body>
    <?php

        function danVtabeli(){
            $dnevi = ["PONEDELJEK", "TOREK", "SREDA", "ČETRTEK", "PETEK"];
            define("BESEDA", $dnevi[rand(0, 4)]);
            //define("BESEDA", $dnevi[3]);
            //echo mb_substr(BESEDA, 0, 1);
            $dolzina = mb_strlen(BESEDA);
            echo '<table style="border-collapse: collapse">';
            for($i = 0; $i < $dolzina; $i++){
                echo '<tr>';
                    for($j = 0; $j < $dolzina; $j++){
                        if($j==$i){
                            echo '<td style="border: 1px solid black">' . mb_substr(BESEDA, $i, 1) . '</td>';
                        }
                        else{
                            echo '<td style="border: 1px solid black"></td>';
                        }
                    }
                echo '<tr>';
            }
            echo '<table>';
        }

        //danVtabeli();

        function enakPodniz($x, $y, $n){
            $count = 0;
            for($i = 0; $i <= mb_strlen($x) - $n; $i++){
                for($j = 0; $j <= mb_strlen($y) - $n; $j++){
                    $nx = mb_substr($x, $i, $n);
                    $ny = mb_substr($y, $j, $n);
                    echo mb_substr($x, $i, $n) . '<br>';
                    echo mb_substr($y, $j, $n) . '<br>';

                    if($nx == $ny)
                        $count++;
                }
            }
            return $count;
        }

        $x = "aec";
        $y = "aecfjksdah";
        $n = 3;
        echo enakPodniz($x, $y, $n);

    ?>
</body>
</html>