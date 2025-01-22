<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja13.4</title>
</head>
<body>
    <form method="POST" action="">
        <label for="temperatura">Temperatura</label>
        <input type="number" name="temperatura" required><br>
        <input type="submit" name="convert" value="Farenheit v Celzij">
        <input type="submit" name="convert" value="Celzij v Farenheit">
    </form>

    <?php
        if ($_SERVER['REQUEST_METHOD'] === "POST") {
            if (isset($_POST['temperatura'])){
                $temperatura = $_POST['temperatura'];
                $conversion = $_POST['convert'];

                if ($conversion === "Celzij v Farenheit") {
                    $rezultat = $temperatura * 1.8 + 32;
                    echo "<p>$temperatura °C = $rezultat °F</p>";
                } else if ($conversion === "Farenheit v Celzij") {
                    $rezultat = ($temperatura - 32) / 1.8;
                    echo "<p>$temperatura °F = $rezultat °C</p>";
                }
            }
        }
    ?>
</body>
</html>