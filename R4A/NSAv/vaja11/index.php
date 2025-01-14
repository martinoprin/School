<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>





    <form method="post" action="">
        <label for="text">Vnesite besedilo (največ 40 znakov):</label>
        <input type="text" id="text" name="text" maxlength="40">
        <br>
        <label for="color">Izberite način izpisa:</label><br>
        <input type="radio" id="color" name="display" value="color" checked>
        <label for="color">Barvni</label>
        <input type="radio" id="bw" name="display" value="bw">
        <label for="bw">Črno/beli</label>
        <br>
        <button type="submit">Izpiši besedilo</button>
    </form>



    <?php

        
        function barvniIzpis($text) {
            $colors = ['red', 'green', 'blue'];
            $colorIndex = 0;
            $output = '';

            for ($i = 0; $i < strlen($text); $i++) {
                if ($text[$i] != ' ') {
                    $output .= "<span style='color: " . $colors[$colorIndex] . ";'>" . htmlspecialchars($text[$i]) . "</span>";
                    $colorIndex = ($colorIndex + 1) % 3;
                } else {
                    $output .= ' ';
                }
            }

            return $output;
        }

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (isset($_POST['text']) && strlen($_POST['text']) <= 40) {
                $text = htmlspecialchars($_POST['text']);
                $display = $_POST['display'];
                if ($display == "color") {
                    echo "<p>" . barvniIzpis($text) . "</p>";
                } else {
                    echo "<p style='color: black;'>$text</p>";
                }
            } else {
                echo "Vnesite besedilo, ki je dolgo največ 40 znakov.";
            }
        }
    ?>
</body>
</html>