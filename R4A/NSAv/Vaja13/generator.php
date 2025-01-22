<?php
if (
    !isset($_POST['spodnja-meja']) ||
    !isset($_POST['zgornja-meja']) ||
    !isset($_POST['st-elementov']) ||
    !isset($_POST['veckratniki']) ||
    $_POST['st-elementov'] < 20
) {
    header("Location: " . $_SERVER['HTTP_REFERER'] . "?error=invalid_input");
    exit();
}


$naciniIzpisa = $_POST['nacini-izpisa'];
$barvaDeljitelji = $_POST['barva-deljitelji'];
$barvaOstala = $_POST['barva-ostala'];


function generator()
{
    $n = $_POST['st-elementov'];
    $deljitelji = [];
    $ostala = [];
    for ($i = 0; $i < $n; $i++) {
        $x =  rand($_POST['spodnja-meja'], $_POST['zgornja-meja']);
        if ($x % $_POST['veckratniki'] == 0) {
            array_push($deljitelji, $x);
        } else {
            array_push($ostala, $x);
        }
    }
    return [
        'deljitelji' => $deljitelji,
        'ostala' => $ostala
    ];
}

$result = generator();

if ($naciniIzpisa === 'urejeno') {
    sort($result['deljitelji']);
    sort($result['ostala']);
}

echo "<h2>Večkratniki:</h2>";
echo '<table style="border: 1px solid black; border-collapse: collapse;"><tr>';
foreach ($result['deljitelji'] as $el) {
    echo '<td style="border: 1px solid black; border-collapse: collapse; background-color: ' . $barvaDeljitelji . ';">' . $el . '</td>';
}
echo '</tr></table>';
echo "Število večkratnikov: " . count($result['deljitelji']) . "<br>";

echo "<h2>Ostala števila:</h2>";
echo '<table style="border: 1px solid black; border-collapse: collapse;"><tr>';
foreach ($result['ostala'] as $el) {
    echo '<td style="border: 1px solid black; border-collapse: collapse; background-color: ' . $barvaOstala . ';">' . $el . '</td>';
}
echo '</tr></table>';
echo "Število ostalih števil: " . count($result['ostala']) . "<br>";
