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

        function enakPodniz($x, $y, $n) {
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

        function podobnost($beseda1, $beseda2){
            $n = 0;
            for($i = 0; $i < mb_strlen($beseda1); $i++){
                for($j = 0; $j < mb_strlen($beseda2); $j++){
                    //$podniz = mb_substr($beseda1, $i);
                    if($beseda1[$i]==$beseda2[$j]){
                        $n++;
                    }
                }
            }
            echo $n>=ceil(mb_strlen($beseda1)/2);
            
        }


        echo podobnost("abcd", "ab34");

    ?>
</body>
</html>