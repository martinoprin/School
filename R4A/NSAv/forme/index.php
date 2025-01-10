<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    require_once "podatki.php";
    ?>
    <form action="form.php" method="get">
        <label for="ime">Ime:</label>
        <input type="text" name="ime" required><br>
        <label for="priimek">Priimek:</label>
        <input type="text" name="priimek" required><br>
        <label for="predmet">Predmet</label>
        <select name="predmet">
        <?php
            foreach($izbirniSplosna as $predmet){
                echo "<option value=\"$predmet\">$predmet</option>";
            }
        ?>
        <option value="zgo">Zgodovina</option>
        </select>
        <br><label for="termin">termin</label>
        <input type="checkbox" name="junij">Junij</input>
        <input type="checkbox" name="avgust">Avgust</input>
        </br><input type="submit" name="Submit">
    </form>
</body>
</html>