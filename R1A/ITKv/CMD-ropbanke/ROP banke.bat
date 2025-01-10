@echo off
title ROP BANKE
color 2
set denar=10000
set detektor_laserjev=0
set lomilka=0
set dekoder=0
set malica=0
set pistola=0
set stevilka=0
set poskus=0
set poskus1=0
type welcome.txt
pause>nul
cls
goto main


:main
cls
set /a poskus=0
set /a poskus1=0
echo 1)Trgovina
echo 2)Ropar
echo 3)Policaj
echo 4)Resetiraj
set /p input=
if %input% == 1 goto trgovina
if %input% == 2 goto ropar
if %input% == 3 goto policaj
if %input% == 4 goto resetiraj else goto main


:resetiraj
cls
set /a denar=10000
set /a detektor_laserjev=0
set /a lomilka=0
set /a dekoder=0
set /a malica=0
echo Resetirano. 
pause>nul
goto main

:policaj
cls
echo Ker nisi postal ropar nihce ni oropal banke, zato si bil odpuscen. Zelis postati ropar? (Za rop potrebujes orodje iz trgovine!)
pause>nul
goto main

:trgovina
cls
echo Za rop banke potrebujes pripomocke, ki ti pomagajo pri ropu. Imas le 10000$!
echo 1)Nazaj
echo 2)Detektor laserjev (5000)
echo 3)Lomilka (3000)
echo 4)Dekoder (5000)
echo 5)Malica (500)
echo 6)Pistola (10000)
set /p input=
if %input% == 1 goto main
if %input% == 2 goto detektorlaserjev
if %input% == 3 goto lomilka
if %input% == 4 goto dekoder
if %input% == 5 goto malica
if %input% == 6 goto pistola else goto trgovina

:nimasdenarja
echo Nimas dovol denarja.
pause>nul
goto trgovina

:detektorlaserjev
cls
if %denar% lss 5000 goto nimasdenarja
set /a denar= %denar% - 5000
set /a detektor_laserjev = %detektor_laserjev% + 1
echo Imas %denar%$.
echo %detektor_laserjev%
echo Kupil si Detektor laserjev.
pause>nul
call :trgovina

:lomilka
cls
if %denar% lss 3000 goto nimasdenarja
set /a denar= %denar% - 3000
set /a lomilka = %lomilka% + 1
echo Imas %denar%$.
echo %lomilka%
echo Kupil si Lomilko.
pause>nul
call :trgovina

:dekoder
cls
if %denar% lss 5000 goto nimasdenarja
set /a denar= %denar% - 5000
set /a dekoder = %dekoder% + 1
echo Imas %denar%$.
echo %dekoder%
echo Kupil si Dekoder.
pause>nul
call :trgovina

:malica
cls
if %denar% lss 500 goto nimasdenarja
set /a denar= %denar% - 500
set /a malica = %malica% + 1
echo Imas %denar%$.
echo %malica%
echo Kupil si Malico.
pause>nul
call :trgovina

:pistola
cls
if %denar% lss 10000 goto nimasdenarja
set /a denar= %denar% - 10000
set /a pistola = %pistola% + 1
echo Imas %denar%$.
echo %pistola%
echo Kupil si Pistolo.
pause>nul
call :trgovina

:premalodenarja
pause>nul

:ropar
cls
echo Zelis oropati banko? [J/N]
set /p input=
if %input% == j goto ropbanke
if %input% == n goto main else goto main

:ropbanke
cls
echo Z avtom se odpeljes do banke.
type avto.txt
pause>nul
cls
type banka.txt
echo.
echo.
echo Prispel si do banke. Ce nimas pistole bos poslan v trgovino.
pause>nul
cls
if %pistola% == 0 goto trgovina
echo Vstopis in ubijes varnostnike, vsi ostali zbezijo, sprozi se alarmni sistem in zaprt si v banki. Lahko se predas in do konca zivljenja ostanes v zaporu ali nadaljujes. [PREDAJA/NADALJUJ]?
set /p input=
if %input% == predaja goto resetiraj
cls
echo Pred tabo so prva vrata zapomni si kodo.
type vrata.txt
pause>nul
goto vrata1

:vrata1
set /a poskus+=1
if %poskus% gtr 5 goto main
cls
set /a stevilka= %RANDOM% * 3
echo %stevilka%
timeout 5
cls
set /p vpis_stevilke=Koda:
if %vpis_stevilke% == %stevilka% (goto kodapravilna) else (goto vrata1)

:kodapravilna
cls
echo Koda pravilna.
pause>nul
goto vrata2

:vrata2
cls
echo Izberi metodo odpiranja vrat.
echo 1)DEKODER
echo 2)LOMILKA
echo 3)KODA
set /p input=
if %input% == 1 goto dekoder1
if %input% == 2 goto lomilka1 
set /a poskus1+=1
if %poskus1% gtr 5 goto main
cls
set /a stevilka= %RANDOM% * 3
echo %stevilka%
timeout 5
cls
set /p vpis_stevilke=Koda:
if %vpis_stevilke% == %stevilka% (goto win) else (goto vrata1)

:dekoder1
cls
if %dekoder% == 0 goto brezpredmeta
goto win

:lomilka1
cls
if %lomilka% == 0 goto brezpredmeta
goto win

:brezpredmeta
cls
echo Nimas tega predmeta. Izberi drugo metodo.
pause>nul
goto vrata2 

:win
cls
set /a denar+=10000
echo Usepelo ti je oropati banko dobil si 10000$.
type money.txt
pause>nul
goto main