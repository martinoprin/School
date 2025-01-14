<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja12</title>
</head>
<body>


    <form method="post" action="">
        <label for="x">Stevilo x:</label>
        <input type="number" id="x" name="x" min="1" required>
        <br>
        <label for="y">Stevilo y:</label>
        <input type="number" id="y" name="y" min="1" required>
        <br>
        <button type="submit" name="operation" value="produkt">Produkt</button>
        <button type="submit" name="operation" value="potenca">Potenca</button>
        <input type="reset" value="Ponastavi">
    </form>

    <?php
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $x = isset($_POST['x']) ? intval($_POST['x']) : 0;
            $y = isset($_POST['y']) ? intval($_POST['y']) : 0;
            $operation = isset($_POST['operation']) ? $_POST['operation'] : '';

            if ($operation == 'produkt') {
                $result = produkt($x, $y);
                echo "Produkt $x in $y je: $result";
            } elseif ($operation == 'potenca') {
                $result = potenca($x, $y);
                echo "Potenca $x na $y je: $result";
            }
        }
    ?>
    <?php
        function produkt($a, $b){
            $produkt = 0;
            $negative = false;

            if ($a < 0) {
            $a = -$a;
            $negative = !$negative;
            }

            if ($b < 0) {
            $b = -$b;
            $negative = !$negative;
            }

            for ($i = 0; $i < $a; $i++) {
            $produkt += $b;
            }

            if ($negative) {
            $produkt = -$produkt;
            }

            return $produkt;
        }

        //$a = -54;
        //$b = -123;
        //echo produkt($a, $b);

        function potenca($a, $b) {
            if ($b == 0) {
                return 1;
            }

            $result = $a;
            for ($i = 1; $i < $b; $i++) {
                $result = produkt($result, $a);
            }

            return $result;
        }

        //$a = 2;
        //$b = 0;
        //echo potenca($a, $b);
    ?>
</body>
</html>