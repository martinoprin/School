<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>

<body style="font-family: Courier;" >
    <?php
        //echo '<span style="color:red; font-size: 30px;"><b>O</span><span>   &nbsp;p   &nbsp;r   &nbsp;i   &nbsp;n   </b><br></span>';
        //echo '<span style="color:red; font-size: 30px;"><b>M</span><span>   &nbsp;a   &nbsp;r   &nbsp;t   &nbsp;i   &nbsp;n<br></span>';
        //echo "23.3.2006";
        //php -S localhost:8000
        //echo phpinfo();

    echo "Echo je \"cool\"<br>";
    print "Print je tudi \"cool\"<br>";
    echo 'Echo je \'cool\'<br>';
    print 'Print je tudi \'cool\'<br>';
    echo("Echo je 'cool'<br>");
    print("Print je tudi 'cool'<br>");
    echo "Trditev 5 &lt; <b>15</b> &gt; 2";

    echo '<p style="color: green; font-size: 14px;">Spletna aplikacija</p>';
    echo '<p style="color: blue; font-size: 20px;">Spletna aplikacija</p>';
    echo '<p style="color: red; font-size: 30px;">Spletna aplikacija</p>';

    echo "Danes je " . '<span style="color:red; font-weight:bold;">' .date("d.m.Y") . '</span><br>';
    $current_time = strtotime("+1 hour");
    echo "Ura je " . '<span style="font-weight:bold;">' . date("H:i:s", $current_time) . '</span><br>';

    if(date("H")<=10)
        echo '<span style="font-style: italic"> Kmalu bo malica! <span>';
    else if(date("H")<=15)
        echo '<span style="font-style: italic"> Kmalu bo kosilo! <span>';
    else if(date("H")>15)
        echo '<span style="font-style: italic; color: hotpink"> Kmalu bo vecerja! </span><br>';
    
        $a = "1";
        $b = 2;
        $c = 3.5;
        $d = true;
        $e = false;
    

 
    function vrni($a){
        echo is_bool($a)."<br/ >";
        echo is_double($a)."<br/ >";
        echo is_float($a)."<br/ >";
        echo is_int($a)."<br/ >";
        echo is_long($a)."<br/ >";
        echo is_null($a)."<br/ >"; 
        echo is_numeric($a)."<br/ >"; 
        echo is_string($a)."<br/ >";
    }

    echo "a<br>";
    vrni($a);
    echo "b<br>";
    vrni($b);
    echo "c<br>";
    vrni($c);
    echo "d<br>";
    vrni($d);
    echo "e<br>";
    vrni($e);
    ?>
</body>

</html>