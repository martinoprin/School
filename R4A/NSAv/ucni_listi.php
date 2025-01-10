<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <pre>
    <?php
    /*$x = 5;
    $y = 10;
    $z = "$x + $y"; 
    echo "$z"; //5 + 10

    $x = 4;
    $y = 3;
    $z = 1;
    echo "$x = $x + $y + $z";  //4 = 4 + 3 + 1 

    $x = 4;
    $y = 3;
    $z = 1;
    $z = $x + $y + $z;
    echo "$z"; //8

    $x = 31.6;
    $y = 2;
    echo $x % $y; //1

    $x = 3.5;
    $y = 2;
    $z = 2;
    echo $x / $y / $z; // 1.75 / 2 = 0.875

    $b1 = 7;
    $b2 = 8;
    echo intval($b1 & $b2).'<br/>'; //0
    $a1 = 33;
    $a2 = 41;
    echo intval($a1.$a2)+5; echo '<br/>';  //3346
    echo boolval($a1) + boolval($a2); echo '<br/>'; //2
    $b = false;
    if ($b) echo 'ups'; else echo 'nop'; //nop

    define("PRVA", 'abcd');
    define("DRUGA", PRVA);
    echo PRVA. '<br/>'; //abcd
    echo DRUGA. '<br/>';//abcd

    define("__LINE__", 'vrstica');
    $x = 'abcd';
    echo __LINE__.' ',__LINE__; // 4 4 izpise dolzino vrstie

    define("PRVA", 021); //osmisko
    define("DRUGA", "021");
    echo PRVA.' '.DRUGA.'<br/>'; //17 021
    if(PRVA == DRUGA) echo 'da'; //ne
    else echo 'ne';
    if(PRVA === DRUGA) echo 'da'; //ne
    else echo 'ne';

    define("__LINE__", 'vrstica');
    $x = 'abcd';
    echo __LINE__.' '.__LINE__; //v kateri vrstici je 64 64

    define("K1", "1");
    $x = 1;  // 1 2 3 int(1) int(2) int(3)
    var_dump($x);
    $$x = 2;
    if ( K1 === $x) echo 'da';
    else echo 'ne'; //ne    ne  ne
    if ($x!=$$x) {  //error ne  1
        $$x/=($x-1);
        echo $$x;
    }
    else echo 'ne';

    $number = rand(100, 999);
    echo "Naključno število: $number<br/>";
    $digits = str_split($number);
    $result = '';

    foreach ($digits as $digit) {
        $char = chr(ord('A') + $digit);
        $result .= $char;
    }
    echo "Ustrezne črke: $result<br/>";

    $x = rand(100, 999);
    $c1 = $x/100;
    $c2 = ((floor($x/10))%10);
    $c3 = $x % 10;
    echo (boolval($c1) + boolval($c2) + boolval($c3));
    
    $a = "1";
    switch($a){
        case 1: echo "aa";
        case 2: echo "bb";  //aabbcc
        default: echo "cc";
    }

    $a = "2";
    switch($a){
        case 1: echo "aa";
        case 2: echo "bb"; break; //izpise bb
        default: echo "cc";
    }

    $a = "1";
    switch($a){
        case 1: break; echo "aa";
        case 2: echo "bb"; break;
        default: echo "cc";   //nic ne vrne
    }

    $a = "1";
    $b = 1;
    switch($a){
        case $a/$b: echo "aa";  break;
        case $a*$b: echo "bb"; break; //aa
        default: echo "cc";

    $a = 65;
    switch($a){
        case "A": echo "aa";  break;
        case 65: echo "bb"; break;  //bb
        default: echo "hi1";
    }

    $a = "1";
    $b = 1;
    switch($a){
        case $a/$b: echo "aa";  break;
        case $a*$b: echo "bb"; break; //aa
            default: echo "cc";
    }

    $b = 1;
    switch($b){
        case 1.0: echo "aa"; break; //aa
        case 1: echo "bb"; break;
        default: echo "h1";
    }

    $b = 2;
    switch(print($b)){
        case 2: echo "aa"; break; //2bb
        case 1: echo "bb"; break;
        default: echo "cc";
    }

    $b = null;
    switch($b) {
        case 1: echo "aa"; break;
        case 0: echo "bb"; break; //bb
        case null: echo "cc"; break;
    }
        
    $a = 5;
    switch(print "$a-$a") {
        case 0: echo "aa"; break;
        case "5 - 5": echo "bb"; break; //5-5cc
        case 1: echo "cc"; break;
        default: echo "dd";
    }

    $a = 5;
    switch(print '$a-$a') {
        case '$a - $a': echo "aa"; break;
        case '5 - 5': echo "bb"; break; //$a-$acc
        case 1: echo "cc"; break;
        default: echo "dd";
    }

    $a = 'y';
    $$a = 'x';
    $$$a = 'y';
    $-b='1'; //neveljavno
    $b1 = '1';
    $$b2 = '2';

    $x = rand(1, 3);
    if($x == 1 ) {
        echo "P";
    }
    else if($x == 2) {
        echo "T";
    }
    else {
        echo "K";
    }

    $x = rand(1, 3);
    switch($x){
        case 1: echo "P"; break;
        case 2: echo "T"; break;
        case 3: echo "K"; break;
    }

    for($i = 1; $i < 5; print $i++.' '); //1 2 3 4
    for($i = 1; $i < 5; print ++$i.' '); //2 3 4 5
    for ($i = 1; $i < 5; print ++$i++ . ' '); //2 4 ne dela

    for ($i = 1; $i < 5;++$i) {
        if($i==3) continue; // 1 2 4
        echo $i .' ';
    }
    for ($i = 1; $i < 5;++$i) {
        if(++$i==3) continue; //2 4
        echo $i .' ';
    }
    for ($i = 1; $i < 5;) {
        if($i++==3) break; //2 3
        echo $i .' ';
    }

    for ($i = 1; $i < 5;) {
        if(++$i==3) break; //2
        echo $i .' ';
    }

    $i = 1;
    while($i < 5){
        if ($i++==3) continue;  //2 5
        echo $i.' ';
        $i++;
    }

    $i = 1;
    while($i < 5){
        if (++$i==3) continue;  //2 4 5
        echo $i.' ';
    }

    $i = 1;
    while($i < 5){
        if ($i==3) continue;  //2 po pa ne vec
        echo ++$i.' ';
    }
    $i = 1;
    while($i < 5){
        if ($i==3) break;  //2 3
        echo ++$i.' ';
    }

    $i = 1;
    do {
        switch (++$i){
            case 1: echo 'a'; //ns se ne zgodi
            default: break;
        }
    }
    while ($i!=3);

    $i = 1;
    do {
        switch ($i){
            case 1: echo 'a';
            case 3: echo 'b'; break; //abb
            default: break;
        }
    }
    while ($i++!=3);

    $i = -3;
    do {
        switch ($i){
            case ($i<0): echo 'a';
            case 0: echo 'b'; break; //abababab
            default: break;
        }
    }
    while ($i++!=3);

    foreach (range(-2, 2)as $x)
        if ($x==='-1') echo 'minus ena ';
    else echo 'ni minus ena ';

    foreach (range('-2', '2')as $x)
        if ($x==='-1') echo 'minus ena '; //minuse ena 5x
    else echo 'ni minus ena ';
   
    $t = range ("2024-09-01", "2024-09-15"); //array
    var_dump($t);

    $t=array('1','1', '1');
    foreach($t as $k => $data) $data=33;
    print_r($t);
    
    $tab=array('3'=>'a', '1b' => 'b', 3=>'c', 'd');
    echo count($tab), "<br/>";
    print_r($tab);

    $x=array(true=>'malina','jagoda','1' => 'borovnica');
    var_dump($x);
    */
    $array = [4, 2, 8, 6, 1];

    sort($array);

    print_r($array);
    require_once(vaja1.php)


    ?>
    </pre>
</body>
</html>