<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja13.2</title>
</head>
<body>
    <form action="generator.php" method="post">
        <input type="number" name="spodnja-meja" placeholder="spodnja meja" required><br>
        <input type="number" name="zgornja-meja" placeholder="zgornja meja" required><br>
        <input type="text" name="st-elementov" placeholder="stevilo elementov" pattern="^\d+$" required><br>
        <input type="text" name="veckratniki" placeholder="veckratniki" pattern="^\d+$" required ><br>
        
        <label>Način izpisa:</label><br>
        <input type="radio" id="urejeno" name="nacini-izpisa" value="urejeno" checked>
        <label for="urejeno">Urejeno</label><br>
        <input type="radio" id="neurejeno" name="nacini-izpisa" value="neurejeno">
        <label for="neurejeno">Neurejeno</label><br>

        <input type="color" id="barva-deljitelji" name="barva-deljitelji" value="#ff0000"><br>
        <input type="color" id="barva-ostala" name="barva-ostala" value="#0000ff"><br>
        
        <input type="submit" value="napolni">

    </form>
</body>
</html>