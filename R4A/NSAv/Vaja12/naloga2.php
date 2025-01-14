<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja12 - 2.naloga</title>
</head>
<body>
    <form method="post">
        <label for="number">Podatek:</label>
        <input type="number" id="number" name="number" min="1" max="200" required><br>
        <button type="submit" name="action" value="even">Sodi delitelji</button>
        <button type="submit" name="action" value="odd">Lihi delitelji</button>
        <button type="submit" name="action" value="all">Vsi delitelji</button>
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $number = intval($_POST["number"]);
        $action = $_POST["action"];

        if ($number < 1 || $number > 200) {
            echo "<p>Vpišite celo število iz intervala [1..200]!</p>";
        } else {
            $divisors = [];
            for ($i = 1; $i <= $number; $i++) {
                if ($number % $i == 0) {
                    if ($action == "even" && $i % 2 == 0) {
                        $divisors[] = $i;
                    } elseif ($action == "odd" && $i % 2 != 0) {
                        $divisors[] = $i;
                    } elseif ($action == "all") {
                        $divisors[] = $i;
                    }
                }
            }

            if (!empty($divisors)) {
                echo "<table border='1'><tr>";
                foreach ($divisors as $divisor) {
                    echo "<td>$divisor</td>";
                }
                echo "</tr></table>";
            } else {
                echo "<p>Ni deliteljev za izbrano možnost.</p>";
            }
        }
    }
    ?>
</body>
</html>