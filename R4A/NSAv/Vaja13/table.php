<?php

if (
    !isset($_POST["vrstce"]) || !isset($_POST["stolpci"]) || 
    $_POST["vrstce"] < 1 || $_POST["vrstce"] > 10 || 
    $_POST["stolpci"] < 1 || $_POST["stolpci"] > 10
) {
    header("Location: " . $_SERVER['HTTP_REFERER']);
    exit();
}

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