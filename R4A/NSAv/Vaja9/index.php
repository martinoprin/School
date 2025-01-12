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




    $razvrsceniRezultati = razvrstiTekmovalce($rezultati);

    echo "<pre>";
    //print_r($razvrsceniRezultati);
    echo "</pre>";


    
    $n = 1;
    $razvrsceniRezultatiPoMetu = razvrstiTekmovalcePoMetu($rezultati, $n);
    
    echo "<pre>";
    //print_r($razvrsceniRezultatiPoMetu);
    echo "</pre>";



    $razvrsceniRezultatiPoSkupniDolzini = razvrstiTekmovalcePoSkupniDolzini($rezultati);

    echo "<pre>";
    //print_r($razvrsceniRezultatiPoSkupniDolzini);
    echo "</pre>";



    $razvrsceniRezultatiPoNajdaljsemMetu = razvrstiTekmovalcePoNajdaljsemMetu($rezultati);

    echo "<pre>";
    //print_r($razvrsceniRezultatiPoNajdaljsemMetu);
    echo "</pre>";


    $meja = 11;
    odstraniKratkeMete($rezultati, $meja);

    echo "<pre>";
    //print_r($rezultati);
    echo "</pre>";

    //require("funkcijeBeseda.php");

    $beseda = ustvariBesedo(10);
    echo "Beseda: $beseda<br>";

    list($samoglasniki, $soglasniki) = razdeliBesedo($beseda);
    echo "Samoglasniki (" . strlen($samoglasniki) . ") : $samoglasniki<br>";
    echo "Soglasniki (" . strlen($soglasniki) . ") : $soglasniki<br>";

    $prviSoglasnik = poisciPrviSoglasnik($soglasniki);
    echo "Prvi soglasnik: $prviSoglasnik<br>";
    function ustvariBesedo($dolzina) {
        $crke = 'abcdefghijklmnopqrstuvwxyz';
        $beseda = '';
        for ($i = 0; $i < $dolzina; $i++) {
            $beseda .= $crke[rand(0, strlen($crke) - 1)];
        }
        return $beseda;
    }

    function razdeliBesedo($beseda) {
        $samoglasniki = '';
        $soglasniki = '';
        $vseSamoglasniki = 'aeiou';
        for ($i = 0; $i < strlen($beseda); $i++) {
            if (strpos($vseSamoglasniki, $beseda[$i]) !== false) {
                $samoglasniki .= $beseda[$i];
            } else {
                $soglasniki .= $beseda[$i];
            }
        }
        return array($samoglasniki, $soglasniki);
    }

    function poisciPrviSoglasnik($soglasniki) {
        if (strlen($soglasniki) == 0) {
            return 'NA';
        }
        $soglasnikiArray = str_split($soglasniki);
        sort($soglasnikiArray);
        return $soglasnikiArray[0];
    }
?>
</body>
</html>