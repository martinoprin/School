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
    ?>
</body>
</html>