<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <form method="post" action="">
        <label for="number">število:</label>
        <input type="text" id="number" name="number">
        <br>
        <label for="type">Izberi sodost/lihost</label><br>
        <input type="radio" id="odstrani_lihe" name="type" value="1" checked>
        <label for="odstrani_lihe">Lihe</label>
        <input type="radio" id="odstrani_sode" name="type" value="0">
        <label for="odstrani_sode">Sode</label>
        <br>
        <button type="submit">Briši števke</button>
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (isset($_POST['number']) && is_numeric($_POST['number'])) {
            $n = intval($_POST['number']);
            $sl = intval($_POST['type']);
            echo "nova vrednost: " . stevilo($n, $sl);
        } else {
            echo "Vpišite celo število.";
        }
    }
    ?>

    <br>
    <a href="/c:/Users/marti/Desktop/martin/School/R4A/NSAv/vaja11/index.php">Nazaj</a>
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
                        //echo 'sodo st';
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
        $sl = 1; //ce je 0 odstrani sode ce je 1 odstrani lihe
        $n = 2321;
        //echo "nova vrednost: " . stevilo($n, $sl);
    ?>
</body>
</html>