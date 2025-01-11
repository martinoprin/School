<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja5</title>
</head>
<body>
    <?php
        function napolniBesede() {
            $tab = [];
            $samoglasniki = ['A', 'E', 'I', 'O', 'U'];
            $soglasniki = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z'];
            
            $tab = [];
            for ($i = 0; $i < 20; $i++) {
                for ($j = 0; $j < 5; $j++) {
                    $st_znakov = rand(5, 12);
                    $beseda = '';

                    while($st_znakov > 0){
                        $beseda .= $soglasniki[array_rand($soglasniki)];
                        $st_znakov--;
                        if(!($st_znakov>=0)) break;
                        $beseda .= $samoglasniki[array_rand($samoglasniki)];   
                        $st_znakov--;
                    }
                    $tab[$i][$j] = $beseda;
                }
            } 
            return $tab;
        }

        function izpisiTabelo($t) {
            $barve = ["#FF0000", "#00FF00", "#0000FF", "#00FFFF"];
            echo '<table>';
            for ($i = 0; $i < 20; $i++) {
                echo '<tr>';
                for ($j = 0; $j < 5; $j++) {
                    echo '<td style="background-color:'. $barve[array_rand($barve)] .';">';
                        echo $t[$i][$j];
                    echo '</td>';
                }
                echo '</tr>';
            }
            echo '</table>';
        }

        //$t = napolniBesede();
        //izpisiTabelo($t);
        echo '<pre>';
        $d= array(
            "1431"=>array("ime"=>"Rok","natocenoGorivo"=>array(55,54,36,45,41)),
            "1488"=>array("ime"=>"Vid","natocenoGorivo"=>array(70,72)),
            "1492"=>array("ime"=>"Luka","natocenoGorivo"=>array(38,42,46,37,40,40))
          );
        $d[2231] = array("ime" => "Martin", "natocenoGorivo" => array(30));
        $d[2231]["natocenoGorivo"][] = 41;

        print_r($d);
        foreach ($d as $key=>$value) {
            if(count($value["natocenoGorivo"]) >= 3) {
                echo "Sifra kupca=$key Ime=" . $value["ime"] . " Natočeno gorivo: " . implode(" ", $value["natocenoGorivo"]) . "<br>";
            }
        }
          
    ?>
</body>
</html>