<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $collator = new Collator('sl_SI');

        $arr = ['Andrej','Špela', 'Zala', 'Žan', 'Črt'];

        $collator->sort($arr);
        var_dump($arr);
        sort($arr); var_dump($arr);

        setlocale(LC_ALL, 'SI_SI');
        sort($arr, SORT_LOCALE_STRING);
        print_r($arr);
    ?>
</body>
</html>