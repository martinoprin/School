<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        function napolniBesede() {
            $tab = [];
<<<<<<< HEAD
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
            echo '<table>';
            for ($i = 0; $i < 20; $i++) {
                echo '<tr>';
                for ($j = 0; $j < 5; $j++) {
                    echo '<td>';
                        echo $t[$i][$j];
                    echo '</td>';
                }
                echo '</tr>';
            }
            echo '</table>';
        }

        $t = napolniBesede();
        izpisiTabelo($t);
=======
            $samoglasniki = ['a', 'e', 'i', 'o', 'u'];
            $soglasniki = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'];
            for ($i = 0; $i < 5; $i++){
                for ($j = 0; $j < 20; $j++){
                    $st_znakov = rand(5, 12);
                    echo $st_znakov . "<br>";
                    for(;$st_znakov>0; $st_znakov--){
                        
                        $tab[$i][$j] = 5;
                    }
                }
            }
        }

        function izpisiTabelo($t) {

        }

        napolniBesede();
>>>>>>> 1a8fd79c76eec120d9df217f096fe8028ab7940f
    ?>
</body>
</html>