<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        require("vozila.php");
        $prostornina = array(
            "Ford" => array("Focus" => 1800, "Mondeo" => 1900),
            "Mercedes" => array("CLX" => 2800, "Meibach" => 3200, "razredB" => 1900),
            "Kia" => array("Ced" => 1400, "Sorento" => 2000, "Picanto" => 990, "Rio" => 1300)
        );
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $selectedBrands = isset($_POST['brands']) ? $_POST['brands'] : array();
            if (!empty($selectedBrands)) {
            echo "<table border='1'>";
            echo "<tr><th>Znamka</th><th>Model</th><th>Prostornina</th></tr>";
            foreach ($selectedBrands as $selectedBrand) {
                if (isset($prostornina[$selectedBrand])) {
                $vehicles = $prostornina[$selectedBrand];
                arsort($vehicles);
                foreach ($vehicles as $model => $volume) {
                    echo "<tr><td>$selectedBrand</td><td>$model</td><td>$volume</td></tr>";
                }
                } else {
                echo "<tr><td colspan='3'>Izbrana znamka $selectedBrand ne obstaja.</td></tr>";
                }
            }
            echo "</table>";
            } else {
            echo "Izberite vsaj eno znamko.";
            }
        }
        ?>

        <form method="post" action="">
            <label for="brands">Izberite znamke vozil:</label><br>
            <select name="brands[]" id="brands" multiple>
            <?php
            foreach ($prostornina as $brand => $models) {
                echo "<option value=\"$brand\">$brand</option>";
            }
            ?>
            </select><br>
            <input type="submit" value="Prikaži">
        </form>
</body>
</html>