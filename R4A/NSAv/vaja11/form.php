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

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            // Check if the number is valid
            if (isset($_POST['stevilo']) && is_numeric($_POST['stevilo']) && $_POST['stevilo'] != '') {
                $stevilo = (int)$_POST['stevilo'];
                $sl = isset($_POST['vrsta']) ? $_POST['vrsta'] : 0;
                
                $rezultat = stevilo($stevilo, $sl);
            } else {
                $rezultat = 'Vpišite celo število.';
            }
        }
    ?>
