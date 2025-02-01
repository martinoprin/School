<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja14.2</title>
</head>
<body>
    <form method="GET" action="">
    <input type="text" name="niz" placeholder="Vnesi niz" pattern="^[a-pr-vzA-PR-VZčšžČŠŽ\s]{3,12}$" required><br>
    <input type="radio" name="izbira" value="soglasniki" required checked>Soglasniki<br>
    <input type="radio" name="izbira" value="nesoglasniki" required>Nesoglasniki<br>

        
        
    <?php
        if (
            !isset($_GET['niz']) ||
            !isset($_GET['izbira']) ||
            ($_GET['izbira'] == "soglasniki" && preg_match('/^[aeiouAEIOUčšžČŠŽ\s]/', $_GET['niz'])) ||
            ($_GET['izbira'] == "nesoglasniki" && $count_a = 0; $count_b = 0;
        ){
            echo "Invalid input. Please try again.";
            exit();
        }

        $niz = $_GET['niz'];
        echo $niz;
    ?>
    

</body>
</html>