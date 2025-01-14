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

function narediT3($t1){
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
    echo $znamka.'<br>';
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

function prodaja($znamka, $oseba, &$vozila) {
    global $lastnik; 

    if (isset($lastnik[$oseba]) && in_array($znamka, $lastnik[$oseba])) {
        if (isset($vozila[$znamka])) {
            $vozila[$znamka]["zaloga"]++;
        } else {
            $vozila[$znamka] = array("zaloga" => 1, "prodano" => 0);
        }

        $key = array_search($znamka, $lastnik[$oseba]); // Find the first occurrence
        if ($key !== false) {
            unset($lastnik[$oseba][$key]); // Remove the vehicle
            $lastnik[$oseba] = array_values($lastnik[$oseba]); // Reindex the array
        }

        if (empty($lastnik[$oseba])) {
            unset($lastnik[$oseba]);
        }

        echo "Prodaja uspešna<br>";
        return 1;
    }

    echo "Prodaja ni uspela<br>";
    return 0;
}

function izpisLastnikov($znamka) {
    global $lastnik;

    $owners = [];

    foreach ($lastnik as $oseba => $vozila) {
        if (in_array($znamka, $vozila)) {
            $owners[] = $oseba;
        }
    }

    if (!empty($owners)) {
        echo "Lastniki vozil znamke '$znamka':<br>";
        echo implode(", ", $owners) . "<br>";
    } else {
        echo "Ni lastnikov vozil znamke '$znamka'.<br>";
    }
}

function prodajaVseh($oseba, &$vozila) {
    global $lastnik;

    if (isset($lastnik[$oseba]) && !empty($lastnik[$oseba])) {
        foreach ($lastnik[$oseba] as $znamka) {
            if (isset($vozila[$znamka])) {
                $vozila[$znamka]["zaloga"]++;
            } else {
                $vozila[$znamka] = array("zaloga" => 1, "prodano" => 0);
            }
        }
        unset($lastnik[$oseba]);
        echo "Prodaja vseh vozil uspešna<br>";
        return 1;
    }

    echo "Prodaja vseh vozil ni uspela<br>";
    return 0;

    function prikazKolicin() {
        global $t, $lastnik;
    
        echo "<table border='1'>";
        echo "<tr><th>Oseba</th><th>Število vozil</th></tr>";
    
        foreach ($lastnik as $oseba => $vozila) {
            $stevilo_vozil = count($vozila);
            echo "<tr><td>$oseba</td><td>$stevilo_vozil</td></tr>";
        }
    
        echo "</table>";
    }
}
?>