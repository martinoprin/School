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




    dodajTocke($tocke);
    izpisiTocke($tocke);


    izpisi1($amerika);
    $zvezneDrzave = ustvariTabeloDrzav($amerika);

    izpis2($zvezneDrzave);
?>
</body>
</html>