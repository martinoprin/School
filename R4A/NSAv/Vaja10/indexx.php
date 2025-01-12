<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        function narediTabelo($beseda){
            $tab = [];
            for ($i = 0; $i < mb_strlen($beseda); $i++){
                $tab[$i] = mb_substr($beseda, $i, 1);
            }
            return $tab;
        }
        //$t=narediTabelo("se hecaš 🤔"); print_r($t);

        function abeceda($niz){
            $tab = [];
            $tempstr = '';
            $j = 0;
            for($i = 0; $i <= mb_strlen($niz); $i++){
                if(mb_substr($niz, $i, 1) == '#' || $i == mb_strlen($niz)){
                    $tab[] = $tempstr;
                    $tempstr = '';
                } else {
                    $tempstr .= mb_substr($niz, $i, 1);
                }
            }
            sort($tab);
            foreach ($tab as $index => $name){
                echo $name;
            }
        }
        //abeceda("Vesna#Jure#John#Peter#ČuriMuri");
        



        
                require('funkcije.php');

        $t1 = napolni();
        print_r($t1);

        $t1 = razvrstiNarascujoce($t1);
        $min = $t1[0];
        $max = $t1[count($t1)-1];
        $najmanjsa = 0;
        $najvecja = 0;

        echo '<table style="border:1px solid black; border-collapse: collapse;"><tr>';
        foreach($t1 as $key=>$value){
            if($value === $min){
                echo '<td style="border:1px solid black; background-color: grey">'. $value . '</td>';
                $najmanjsa++;
            }
            else if($value === $max){
                echo '<td style="border:1px solid black; background-color: blue">'. $value . '</td>';
                $najvecja++;
            }
            else{
            echo '<td style="border:1px solid black;">'. $value . '</td>';
            }
        }
        echo '</tr></table>';
        echo "Najmanjsa crka $min se v tabeli ponovi $najmanjsa krat".'<br>';
        echo "Najvecja crka $max se v tabeli ponovi $najvecja krat";

        narediT2($t1);
        


        require('data.php');
        require('funkcije.php');

        $t = napolniT($vozila);
        print_r($t);



        for($i = 0; $i < 5; $i++){
            $znamka = array_rand($t);
            $oseba1 = array_rand($oseba);
            nakup($znamka, $oseba1, $t);
        }
        function razvrstiNarascujoce($tabela) {
            sort($tabela);
            return $tabela;
        }

    ?>
</body>
</html>