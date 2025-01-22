<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja13.4</title>
</head>
<body>
    <form method="POST" action="">

        <label for="input-unit">Vrednost</label>
        <input type="number" name="temperatura" required>
        <select name="input-unit1" id="input-unit1" required>
            <option value="celsius">Celsius (°C)</option>
            <option value="fahrenheit">Fahrenheit (°F)</option>
            <option value="kelvin">Kelvin (K)</option>
        </select>
        <select name="input-unit2" id="input-unit2" required>
            <option value="celsius">Celsius (°C)</option>
            <option value="fahrenheit">Fahrenheit (°F)</option>
            <option value="kelvin">Kelvin (K)</option>
        </select>
        <br>
        <input type="submit" value="Pretvori">
    </form>

    <?php
    if ($_SERVER['REQUEST_METHOD'] === "POST") {
        if (isset($_POST['temperatura'])) {
            $temperatura = (float)$_POST['temperatura'];
            $inputUnit = $_POST['input-unit1'];
            $outputUnit = $_POST['input-unit2'];

            $celsius = null;
            if ($inputUnit === "celsius") {
                $celsius = $temperatura;
            } elseif ($inputUnit === "fahrenheit") {
                $celsius = ($temperatura - 32) / 1.8;
            } elseif ($inputUnit === "kelvin") {
                $celsius = $temperatura - 273.15;
            }

            if ($celsius !== null) {
                if ($outputUnit === "celsius") {
                    $rezultat = $celsius;
                    $outputSymbol = "°C";
                } elseif ($outputUnit === "fahrenheit") {
                    $rezultat = $celsius * 1.8 + 32;
                    $outputSymbol = "°F";
                } elseif ($outputUnit === "kelvin") {
                    $rezultat = $celsius + 273.15;
                    $outputSymbol = "K";
                }
                echo "<p>$temperatura " . htmlspecialchars($inputUnit) . " = " . number_format($rezultat, 2) . " $outputSymbol</p>";
            } else {
                echo "<p>Invalid input or output unit.</p>";
            }
        }
    }
    ?>
</body>
</html>