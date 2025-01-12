<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja9</title>
</head>
<body>
    <?php
    require("funkcijeBarve.php");
    require("tocke.php");
    require("data.php");




    //dodajTocke($tocke);
    //izpisiTocke($tocke);


    //izpisi1($amerika);
    //$zvezneDrzave = ustvariTabeloDrzav($amerika);

    //izpis2($zvezneDrzave);

    //isci($amerika, 'D');
    //isci($amerika, 'N');


    function razvrstiTekmovalce($rezultati) {
        uasort($rezultati, function($a, $b) {
            return $b[0] <=> $a[0];
        });

        return $rezultati;
    }

    $razvrsceniRezultati = razvrstiTekmovalce($rezultati);

    echo "<pre>";
    //print_r($razvrsceniRezultati);
    echo "</pre>";

    function razvrstiTekmovalcePoMetu($rezultati, $n) {
        uasort($rezultati, function($a, $b) use ($n) {
            return $b[$n] <=> $a[$n];
        });
    
        return $rezultati;
    }
    
    $n = 1;
    $razvrsceniRezultatiPoMetu = razvrstiTekmovalcePoMetu($rezultati, $n);
    
    echo "<pre>";
    print_r($razvrsceniRezultatiPoMetu);
    echo "</pre>";

?>
</body>
</html>