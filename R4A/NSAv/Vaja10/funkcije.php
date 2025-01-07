<?php
function napolni(){
    $t1 = [];
    for($i = 0; $i < 70; $i++){
        $t1[$i] = chr(rand(ord("A"), ord("Z")));
    }
    return $t1;
}

function razvrstiNarascujoce($t1){
    sort($t1);
    return $t1;
}

function narediT2($t1){
    $t2 = [];
    for($i = 65; $i <= 90; $i++){
        $t2[chr($i)] = 0;
    }

    $znak = $t1[0];
    $stevec = 0;
    foreach($t1 as $key=>$value){
        if($value == $znak){
            $stevec++;
        }
        else {
            $t2[chr(ord($value)-1)] = $stevec;
            $stevec = 1;
            $znak = $value;
        }
    }
    $t2[$znak] = $stevec;

    print_r($t2);
}

function napolniT($vozila){
    $t = [];
    foreach($vozila as $vozilo){
        $t[$vozilo[0]] = array(
            "zaloga" => $vozilo[1],
            "prodano" => $vozilo[2]
        );
    }
    return $t;
}

function nakup($znamka, $oseba, &$vozila){
    $lastnik = [];
    echo $znamka.'<br';
    foreach($vozila as $key=>&$value){
        if($key==$znamka){
            if($value["zaloga"] > 0){
                $value["zaloga"]--;
                $value["prodano"]++;

                $lastnik[$oseba][] = $key;
                //print_r($lastnik);
                print_r($vozila);
                echo "<br>Nakup izveden <br>";
                return 1;
            }
        }
    }
    echo "Nakup ni izveden<br>";
    return 0;
}
?>