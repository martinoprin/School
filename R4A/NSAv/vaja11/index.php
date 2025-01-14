<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        function stevilo($n, $sl){
            $poskus = 0;
            $novaVrednost = 0;
            while($n >= 1){
                //echo $n . '<br>';
                $ostanek = $n % 10;
                //echo 'ostank: '. $ostanek . '<br>';

                if($sl){
                    if($ostanek%2==0){
                        echo 'sodo st';
                        $novaVrednost += $ostanek * pow(10, $poskus);
                        //echo '<br>nova vrednost: ' . $novaVrednost;
                        $poskus++;
                    }
                }
                else{
                    if($ostanek%2!=0){
                        //echo 'liho st';
                        $novaVrednost += $ostanek * pow(10, $poskus);
                        $poskus++;
                    }
                }
                $n /= 10;
                $n = floor($n);
                
            }
            return $novaVrednost;
        }
        $sl = 0; //ce je 0 odstrani sode ce je 1 odstrani lihe
        $n = 0;
        echo "nova vrednost: " . stevilo($n, $sl);
    ?>
</body>
</html>