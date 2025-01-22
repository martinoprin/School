<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja13.1</title>
</head>
<body>
    <form action="table.php" method="POST">
        <label for="stolpci">Vnesi število stolpcev:</label>
        <input type="text" name="stolpci" pattern="^([1-9]|10)$" required><br>
        <label for="vrstce">Vnesi število vrstic:</label>
        <input type="text" name="vrstce" pattern="^[0-9]$" required><br>
        <label for="barva-diagonale">Vnesi barvo diagonale:</label>
        <input type="color" name="barva-diagonale" required><br>
        <label for="barva-ostale">Vnesi barvo ostalih celic:</label>
        <input type="color" name="barva-ostale" required><br>
        <input type="submit" value="Izrisi">


</body>
</html>