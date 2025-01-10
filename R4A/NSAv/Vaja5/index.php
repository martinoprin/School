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
    ?>
</body>
</html>