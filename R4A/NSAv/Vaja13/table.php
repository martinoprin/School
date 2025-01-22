<?php

if (
    !isset($_POST["vrstce"]) || !isset($_POST["stolpci"]) || 
    $_POST["vrstce"] < 1 || $_POST["vrstce"] > 10 || 
    $_POST["stolpci"] < 1 || $_POST["stolpci"] > 10 ||

    !isset($_POST["barva-diagonale"]) || !isset($_POST["barva-ostale"]) ||
    !preg_match("/^#[0-9a-fA-F]{6,6}$/", $_POST["barva-diagonale"]) ||
    !preg_match("/^#[0-9a-fA-F]{6,6}$/", $_POST["barva-ostale"])
) {
    header("Location: " . $_SERVER['HTTP_REFERER']);
    exit();
}

echo $_POST["barva-diagonale"];

echo '<table>';
for ($i = 0; $i < $_POST["vrstce"]; $i++) {
    echo '<tr style="height: 100px;">';
    for ($j = 0; $j < $_POST["stolpci"]; $j++) {
        if ($i == $j) {
            echo '<td style="width:100px; background-color: ' . $_POST["barva-diagonale"] . ';">';
        } else {
            echo '<td style="width:100px; background-color: ' . $_POST["barva-ostale"] . ';">';
        }
        echo '</td>';
    }
    echo '</tr>';
}
echo '</table>';
?>