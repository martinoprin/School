<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaja14.1</title>
</head>
<body>
    <form method="GET" action="">
        <input type="text" name="niz" placeholder="Vnesi niz" pattern="^[a-zA-ZčšžČŠŽ\s]{1,40}$" required><br>
        <input type="color" name="barva1" value="#ff0000">
        <input type="color" name="barva2" value="#00ff00">
        <input type="color" name="barva3" value="#0000ff"><br>
        <input type="submit" value="Pošlji"><br>

    <?php
        if (
            !isset($_GET['niz']) || 
            !preg_match("/^[a-zA-ZčšžČŠŽ\s]{1,40}$/", $_GET['niz']) ||
            !preg_match("/^#[0-9a-fA-F]{6,6}$/", $_GET['barva1']) ||
            !preg_match("/^#[0-9a-fA-F]{6,6}$/", $_GET['barva2']) ||
            !preg_match("/^#[0-9a-fA-F]{6,6}$/", $_GET['barva3'])
        ){
            header("Location: " . $_SERVER['HTTP_REFERER']);
            exit();
        }
        $niz = $_GET['niz'];
        $barva1 = $_GET['barva1'];
        $barva2 = $_GET['barva2'];
        $barva3 = $_GET['barva3'];
    
        echo $niz . "<br>";
        $i = 1;
        foreach(str_split($niz) as $crka){
            if( $crka != " "){
                if($i % 3 == 0){
                    echo "<span style='color: $barva3;'>$crka</span>";
                } else if($i % 2 == 0){
                    echo "<span style='color: $barva2;'>$crka</span>";
                } else {
                    echo "<span style='color: $barva1;'>$crka</span>";
                }
                $i++;
            } else {
                echo " ";
            }
        }
    ?>
</body>
</html>