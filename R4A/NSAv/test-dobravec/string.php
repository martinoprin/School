<?php
echo "<b>mb_chr(18000)</b> -> " . mb_chr(18000) . "<br/><br/>";

echo "<b>mb_ord('č')</b> -> " . mb_ord("č") . "<br/><br/>";

echo "<b>strlen('čičabela')</b> -> " . strlen("čičabela") . " //<i style='color: darkgreen'>Vrne število bajtov</i><br/><br/>";
echo "<b>mb_strlen('čičabela')</b> -> " . mb_strlen("čičabela") . " //<i style='color: darkgreen'>Vrne število znakov</i><br/><br/>";

echo "<b>mb_substr('čičabela', 2, 4)</b> -> " . mb_substr("čičabela", 2, 4) . "<br/><br/>";

echo "<b>mb_substr_count('čičabela', 'č')</b> -> " . mb_substr_count("čičabela", "č") . "<br/><br/>";

echo "<b>mb_str_split('čičabela', 3)</b> -> <pre/>";
print_r(mb_str_split("čičabela", 3));
echo "</pre>";

echo "<b>mb_strpos('čičabela', 'č')</b> -> " . mb_strpos("čičabela", "č") . "<br/><br/>";

echo "<b>mb_strtolower('ČIČABELA')</b> -> " . mb_strtolower("ČIČABELA") . "<br/><br/>";

echo "<b>mb_strtoupper('čičabela')</b> -> " . mb_strtoupper("čičabela") . "<br/><br/>";
?>