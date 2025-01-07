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

        function napolni(){

        }
    ?>
</body>
</html>