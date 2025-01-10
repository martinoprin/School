<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        function napolni(){
            $n = rand(2, 8);
            $tab = [];
            for($i = 0; $i < $n; $i++){
                for($j = 0; $j < $n; $j++){
                    if($i == $j){
                        $tab[$i][$j] = '*';
                    }
                    else if($i < $j){
                        $tab[$i][$j] = '0';
                    }
                    else if($i > $j){
                        $tab[$i][$j] = "$n";
                    }
                }
            }
            return $tab;
        }
        function izpisi($tab){
            echo "Tabela velikosti " . count($tab) . "x" . count($tab);
            echo '<table style="border: 1px solid black; border-collapse: collapse;">';
            for($i = 0; $i < count($tab); $i++){
                echo '<tr>';
                for($j = 0; $j < count($tab[0]); $j++){
                    echo '<td style="border: 1px solid black; height: 30px; width: 30px; text-align:center;">' . $tab[$i][$j] . '</td>';
                }
                echo '</tr>';
            }
            echo '</table>';
        }

        function izpisi2($tab){
            $bc1 = rand(0, 255);
            echo "Tabela velikosti " . count($tab) . "x" . count($tab);
            echo '<table style="border: 1px solid black; border-collapse: collapse;">';
            for($i = 0; $i < count($tab); $i++){
                echo '<tr>';
                for($j = 0; $j < count($tab[0]); $j++){
                    if($i == $j){
                        echo '<td style="border: 1px solid black; height: 30px; width: 30px; text-align:center; background-color: $bc1">' . $tab[$i][$j] . '</td>';
                    }
                    echo '<td style="border: 1px solid black; height: 30px; width: 30px; text-align:center;">' . $tab[$i][$j] . '</td>';
                }
                echo '</tr>';
            }
            echo '</table>';
        }

        $tab = napolni();
        izpisi($tab);
    ?>
</body>
</html>