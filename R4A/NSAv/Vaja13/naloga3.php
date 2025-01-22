<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja13.3</title>
</head>
<body>
    <form action="beseda.php" method="post">
        <input type="text" name="beseda" placeholder="Vnesi besedo" pattern="^[a-zčšž]{5,20}" required><br>
        <input type="submit" value="Izpis">
    </form>
</body>
</html>