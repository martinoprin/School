<?php

    if ($_SERVER["REQUEST_METHOD"] == "GET") {
        function preveri_veliko_zacetnico($beseda) {
            return ucfirst(strtolower($beseda)) == $beseda;
        }

        if (isset($_GET['ime']) && isset($_GET['priimek'])) {
            $ime = $_GET['ime'];
            $priimek = $_GET['priimek'];

            if (preveri_veliko_zacetnico($ime) && preveri_veliko_zacetnico($priimek)) {
                echo "<p>Ime in priimek: $ime $priimek</p>";
                echo "<p>Program: " . (isset($_GET['program']) ? $_GET['program'] : 'Neznan') . "</p>";
            } else {
                echo "Ime: " . ucfirst(strtolower($ime)) . " (<span style=\"color:red;\">$ime</span>)<br>";
                echo "Priimek: " . ucfirst(strtolower($priimek)) . " (<span style=\"color:red;\">$priimek</span>)<br>";
                echo "Program: " . (isset($_GET['program']) ? $_GET['program'] : 'Neznan');
            }
        }
    }
    var_dump($_GET["ime"]);
    ?>