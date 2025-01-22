<?php
    if (
        !isset($_POST["beseda"]) ||
        !preg_match("/^[a-zčšž]{5,20}$/", $_POST["beseda"])
    ){
        header("Location: " . $_SERVER['HTTP_REFERER']);
        exit();
    }

    $beseda = $_POST["beseda"];
    echo "Beseda: {$beseda}<br>";
    $beseda = str_split($beseda);
    sort($beseda);
    echo "Naraščujoče urejeni znaki: ";
    foreach($beseda as $el){
        echo $el;
    }
    echo '<br>';
    rsort($beseda);
    echo "Padajoče urejeni znaki: ";
    foreach($beseda as $el){
        echo $el;
    }
?>