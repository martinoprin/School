<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (isset($_POST['color']) && !isset($_POST['white'])) {
            $color = $_POST['color'];
        } elseif (isset($_POST['white'])) {
            $color = "#FFFFFF";
        }
    } else {
        $color = "#FFFFFF";
    }
    ?>

    <form method="post">
        <input type="color" name="color" value="<?php echo isset($color) ? $color : '#FFFFFF'; ?>">
        <button type="submit">Obarvaj ozadje</button>
        <button type="submit" name="white" value="white">Belo ozadje</button>
    </form>

    <style>
        body {
            background-color: <?php echo $color; ?>;
        }
    </style>
</body>
</html>