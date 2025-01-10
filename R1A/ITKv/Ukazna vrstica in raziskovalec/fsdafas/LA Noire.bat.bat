@echo off
title Igra
if "%1" neq "" ( goto %1)
color 0A 

:MENU
cls
echo 1. Start
echo 2. Cases
echo 3. Settings
echo 4. Tutorial
echo 5. Exit
echo.
set /p number=
if %number%==1 goto START_1
if %number%==2 goto CASES
if %number%==3 goto SETTINGS
if %number%==4 goto TUTORIAL
if %number%==5 goto QUIT 

	:SETTINGS
	cls 
    echo 1. Controlls
    echo 2. Sound
    echo 3. Back
    set /p number=
    if %number%==1 goto CLR
    if %number%==2 goto CONTROLS
    if %number%==3 goto SOUND
    if %number%==4 goto MENU
    goto SETTINGS

        :CONTROLS
        cls
        echo There's no controls in here dumbass
        echo.
        pause
        goto SETTINGS

        :SOUND
        cls
        echo There's no sound here dude what were you expecting ?
        echo.
        pause
        goto SETTINGS

    :CASES
    cls 
    echo 1. Tutorial 
    echo.
    echo 2. Proloue
    set /p number= 
    if %number%==1 goto TUTORIAL
    goto CASES

:START_1
cls
echo T 
ping localhost -n 1 >nul
cls

echo T U
ping localhost -n 1 >nul
cls

echo T U T 
ping localhost -n 1 >nul
cls

echo T U T O 
ping localhost -n 1>nul
cls

echo T U T O R 
ping localhost -n 1 >nul
cls

echo T U T O R I 
ping localhost -n 1 >nul
cls

echo T U T O R I A 
ping localhost -n 1 >nul
cls

echo T U T O R I A L 
echo.
echo.
echo.
set /p answer=Press C to continue or S to skip
if %answer%==S goto PROLOGUE
if %answer%==C goto TUTORIAL
goto START

:PROLOGUE
cls 
set /p answer=Please type in your name: 
pause 
cls 

echo T 
ping localhost -n 1 >nul
cls

echo T H 
ping localhost -n 1 >nul
cls

echo T H I
ping localhost -n 1 >nul
cls

echo T H I S 
ping localhost -n 1 >nul
cls

echo T H I S   G 
ping localhost -n 1 >nul
cls

echo T H I S    G A 
ping localhost -n 1 >nul
cls

echo T H I S    G A M 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0'
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    ON    T
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    ON    T R 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    ON    T R U 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    ON    T R U E 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    ON    T R U E    E 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    ON    T R U E    E V 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    ON    T R U E    E V E
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    ON    T R U E    E V E N 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    ON    T R U E    E V E N T 
ping localhost -n 1 >nul
cls

echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    ON    T R U E    E V E N T S
echo.
echo.
pause 
cls 


    :TUTORIAL
    cls 
    set /p answer=Please type your name:
    echo.
    echo.
    pause 
    cls 

    echo T 
    ping localhost -n 1 >nul
    cls

    echo T H 
    ping localhost -n 1 >nul
    cls

    echo T H I
    ping localhost -n 1 >nul
    cls

    echo T H I S 
    ping localhost -n 1 >nul
    cls

    echo T H I S   G 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0'
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N    T
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N    T R 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N    T R U 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N    T R U E 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N    T R U E    E 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N    T R U E    E V 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N    T R U E    E V E
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N    T R U E    E V E N 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N    T R U E    E V E N T 
    ping localhost -n 1 >nul
    cls

    echo T H I S    G A M E    T A K E S    P L A C E    I N    L A T E    1 9 5 0's    A N D    I S    B A S E D    O N    T R U E    E V E N T S
    echo.
    echo.
    pause 
    cls

    echo You're a patrolman, driving down the road.
    
    ping localhost -n 3 >nul 
    echo.
    echo You suddenly recieve a call about a stolen vehicle parked 3 blocks away. 
    
    ping localhost -n 4 >nul
    cls 

echo MmmdddddmmmmmNNNNNmmmmmNmmNNNNNNmmmmmmmmmmmmNNNmmmmsoyddhhhhhhhhhhhhyyyhhhhhhhhhhhhhdhhhd
echo MddddddmmNNNNNNNNNNNNNNNNNNNNNNmmddhhhhyooyyyhdmmNdooyddhhhhhyyyyyyyyyyyyyyhhhhhhhhddhhhd
echo MdddddddNNmNNNNNNNNNNNNNNNNNdsooo+/////::-//::::-:+/oydhhhhhyyyyyyyyyyyyyyyyhhhhddddddddd
echo MddhhhhdNNmNNNNNNNNNNNNNNNNNho/oyhhddmmmddmmmddhyoo/+shhhhhyyyyyyyyyyyyyyyyyhhhhhdddddddd
echo MddhdddmNNNNNNNNNNNNNNNNNNNNmddmmmmmmmmNNmmmNNNNNmNddyyyhhyyyyyyyyyyyyyyyyyyyhhhhhhhhdddd
echo MmmmmmmNNNNNNNNNNNNNNNNmmmmmmdhhhhysoo++++osyhdmmNNNNdhyhyyyyyyyyysssssssyyyyyyhhhhhhhddd
echo MNNNNNNNNNNNNNNNNNNNmmmmmdhhhhhhyssooo/-`````.-/shmNNNNdysyyyyssssssssssssssyyyyyyyyhhhhh
echo MNNNNNNNNNNNNNNNNNmmmmmmdddhssyhsssso+/-`````````-:smNNNmdyosysssssssssssssssssssoosyyyys
echo MNNNNNNNNNNNNNNNmmmdhyyhdmdyyhyyys+:-..``````````-`-smNNNNmhsssssooooosooooooooso+++sssso
echo MNNNNNNNNNNNNNNNmmdo/:///oyyhhhyo:-.....``...```.`.-+dNNNNmdsssssooooooooooooooo++++++oso
echo MNNNNNNNNNNNNNNNNNd::.-/:-+yhhyo/--.```...:::////-:::odhhysssysssoooooooooooooo++++++oooo
echo MNNNNNNNNNNNNNNNNNh::-./+-/+///::-..``.--::+ossoo+/:+shssyyyssossoooooooooooooo++++++o+oo
echo MNNNNNNNNNNNNNNNNNms--./o/++/:::--...`..-../oo/:-../ydhyyyyyysssssooooooooooooo+++++++++/
echo MNNNNNNNNNNNNNNNmddms:---/o+/:------...`..-::--...`:ydhhhhhhyyyysyyyssooooooooo++++++++//+
echo MNNNNNNNNNNNNNNNdssydhs:./o+/:--::---..`...:::-...`-oyyyyyhhhhyyyyhyyyysssssoo++++o++++//:
echo MNNNNNNNNNNNNNNmhsoooydy+oo+::-::::--......://::--..---::://++++oosyyysyyyyssssooooo+//++:
echo MNNNNNNNNNNNNNNmdyso++syo+o//:-:::::-.....-:/++/:/++-`  `...--..---://ossssyyyysso+ssooo+:
echo MNNNNNNNNNNNNNNNNmhyoosss+//::-:::---.....::/:--::+y+-..:+//o+++osooo+sossssssysyyshsosso:
echo MNNNNNNNNNNNNNNNNNNmdyooo+//::::::---..`..:::---::/++:/:+ossosyyyyyhhyhhhhhyyydhhyyy+-+hh:
echo MNNNNNNNNNNNNNmmmNNNNmddyo+/:::::-----...-/:::/ossosysysys+:.:ssshs/:+dhhdddddddmddh/`:dN+
echo MNNNNNNNNNmmmNmNNNNNNmmNNdh+/:::::----..-::---:++oosyddhs:.` .:/shy/``+hdddddhdmmmmh/./dmo
echo MNNNNNNNNmmmmNNNNNNNNmNNNNNdhs+//::::----:---:+ooosyhhhs-`  ``./yhy/` `/hddhohmmmmmh/.+mmd
echo MNNNNNNNNNmmmNNNNNNNNNNNNNNNNmdhyo/::///:-.----:+yhyoss/``  -`-syo:`  `sddddhmmmmmmh:.omNd
echo MNNNNNNNNNmmNNNNNNNNNNNNNNmmmNNNmdho+::/+o+/::+oomNNho/.`  ./:/yy/`   .hdmmmmmmmmmmh:.omNd
echo NNNNNNNNNmmNNNNNNNNNNNNNNmmmmmmmNNNmhysssdddddmmNNNmo-`  `-+/+o/.    `ohhdmdmNmmmmy-.smmNh
echo MNNNNNNNNNmmmNNNNNNNNNNNNNmNNNNmmmmmmmmmNNNNNNNNNNNNh:.``  `````     ``+yyhmdmmmmmms-.ymmh
echo MNNNNNNNNNmmmNNmmmmmmNNNNNmmmmmmmmmmmmmNNNNNNNNNNNNNs-.```          ```:hddddddmmmds-.ymmd
echo MNNNNNNNNNmmmNNmmmNNNNNNNNmmmmmmmmmmmmmmmmmmmNNNNNNmo.```           ```+hddmmdhhddho--hNmN
echo MNNNNNNNNNmmmNNNNNNNNNNNNmmmNmyoydmmmmmmmmmmmmmNNNNm+.````        ```.:yhhdddyyyyhy/.:hNmm
echo MmNNNNNNNNmmmmmmmmmmmNNNNNNmmds/+ydmmmmmmmmmmmmmmNNm+`````       `..-/oyhdddhyyyyss/.:hmmm
echo MNNNNNNNNNmmmmmmmmmmmmNNNNNmmmdysydmmmmmmmmmmmmmmmNm+.``     ````..:oyyhddddhysssss/.:yddN
echo MNNNNNNNNNNNNmNNNNNmmmmmmmNNmmmmmmmmmmmmmmmmmmmmmmNm+.```     ``.-/oyyyhddmdhyoysso:.:syhm
echo MNNNNNNNNNNNNNNNNNNNNNmmmmmmmmmmmmmmmmmmmmmmmmmmmNNd+.``  ````..:ossosyhhdddhs+oooo:.+sssm
echo MNNNNNNNNNNNNmmNNNmmNNNNNmmmmmmmmmmmmmmmmmmmmmmmmNNmmmdyo-````:ydhyyhhyddmmdhyssoo+-./sood
echo MNNNNNNNNNNNNNmmmmmNmmNNNmmmmmmmmmmmmmmmmmmmmmmmmNmmmmmmmdy/.-smNNmysyhddddhyssysoo--+sssh
echo MNNNNNNNNNNNNmhshhhmNmmmmmmNNmmmmmmmmmmmmmmmmmmmNNmmmmmmmdmdysdmmmmdhhyhdhhysosssos--+sssm
echo MNNNNNNNNNNNmdho/o/osyhddmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmdmmddmdmNmNmy+ydhhyssssos-:sdhyd
echo NNNNNNNNNNNNds/syyyso++oyhdNNmmmmmmmmmmmmmmmmNmmmmmmmmmmdddmddddmmdmNddhyhdhoossos-/shdmmh
echo MmNNNNNNNmmNNd+/yoy+ooyysoooymmmmmmmmmmmmmmmmmmmmmmmmmmmmddmmddddddmmNdmmdyoosssooo-+yhyy+
echo MmmmNNNNNNmmdyoysy+sssoooossssydmmmmmmmmmmmmmmmmmmmmmmmmmmmdddddddddmmmmmmhhhyhyso:-::-/ys
echo MmmmmNNNNNNmhosyy+ysss+sso+::-:sdmmmmmmmmmNNmmmmmmmmmmmmmmmdddddddddmddmNmmmmhdhdy:.``:ydN
echo MmmddmmNNNNNmhss+sso/+hmmdmddhsymmmmmmmmNNNNmmmmmmmmmmmmmmmmmddyoydddhddmNmmmmdyshdo-:ydhN
echo MdmddddmmNNmmds+oso::hNmmmmmmmmmmmmmmmmmNNNmmmmmmmmmmmmmmdNdmmy.`:hdhddhmmNmmmmhyhhyhdmhdN
echo.
echo.
echo.
echo.
echo "We need your help on 4th avenue, there's a stolen vehicle."
pause 
cls 
echo When you arrive on the scene you see a car that has been reported and you search for clues to see if there are any traces of the thief.
ping localhost -n 5 >nul
echo.
echo There is also an eyewitness that saw a man walking out of the car. 
echo.
echo.
pause
cls 

echo T 
ping localhost -n 2 >nul 
cls 

echo T I 
ping localhost -n 2 >nul 
cls 

echo T I P 
ping localhost -n 2 >nul 
cls 

echo T I P:
ping localhost -n 1 >nul 
cls 

echo T I P
ping localhost -n 1 >nul 
cls 

echo T I P:
ping localhost -n 1 >nul 
cls 

echo T I P
ping localhost -n 1 >nul 
cls 

echo T I P:
ping localhost -n 1 >nul 
cls 

echo T I P
ping localhost -n 1 >nul 
cls 

echo T I P:
ping localhost -n 1 >nul 
cls 

echo T I P
ping localhost -n 1 >nul 
cls 

echo T I P:
ping localhost -n 1 >nul 
cls

echo T I P
ping localhost -n 1 >nul 
cls  
echo T I P: You're going to have to search for clues and interrogate eye-witnesses on every crime scene.
pause 
goto TUTORIAL_MAP

:TUTORIAL_MAP
cls 
echo ______________________________________
echo.
echo               alleyway
echo _______________    _______________
echo               ^|   ^|              ^|
echo               ^|   ^|              ^|
echo               ^| 3 ^|  restaurant  ^|
echo    hotel      ^|   ^|   (closed)   ^|
echo    (closed)   ^|   ^|______________^|
echo               ^|       ___
echo ______________^|       ^|_1^|-STOLEN 
echo                               CAR
echo      o-EYEWITNESS
echo      2
echo.
echo.
echo.

set /p answer=Where do you want to go ?
if %answer%==1 goto CAR_1
if %answer%==2 goto WITNESS_1
if %answer%==3 goto ALLEYWAY_1
if %answer%==NOTEBOOK goto NOTEBOOK
set TIRE_CLUE=0
set BOOT_CLUE=0
set CLUE_BAG_TUT=0
set CLUE_MAN_RUNNING_TUT=0
set CLUE_SUSPECT_TUT=0
set CLUE_KNIFE_TUT=0
goto TUTORIAL_MAP

    :CAR_1
    cls 
    echo The car is a dark red Lincoln Continental, just as described in the report.Where do you want to check first ? 
    pause 
    goto CAR_VIEW_1

        :CAR_VIEW_1
        cls
        echo                                                                                                                         ___
        echo                                                                                                                        /    \
        echo                                                                                            `````.``                         ^|                           
        echo                                                                            ``..-://+ooooososssooo+:-`                     /                          
        echo                                                                    ``.-:://+++++++//:--..........:///+o/-                 /                           
        echo                                                               `  `://:--.`````                      `.:shs-              /____ BOOT                 
        echo                                ____                            `.+.`                            .----.`.ody:` `.:-`                                  
        echo                               /    \                           ``+``              `--:-.-.     .+so/:/os:./hy+:+++++-:::::://:--++///:..`           
        echo                                     ^|                          `/.      ````.`..`..+/ys+o:```.-oss/+++ohyo/oysy:o/+s/o+///yh+::+:.`````.:-`           
        echo                                  _ /                          -.`..-:+o+//////::osooy//ossso++++ho//:/h/do-/oysy//::+/+/++//-.``.:`    `-/.`        
        echo                                    \  HOOD                 `-++osoosso+/////+/++++ooo++//////+++ooooooosyso++s+++o+++::::::/--:::` `````./`         
        echo                                     ^|             ````...::/oosoo+/::--::-`..--:::-::/+:.`` ```...-/+++//:--.``.-.``` ``.+o+os+/-..``:::oo-o`         
        echo                               \____/    ````...-:////+ossso+/-..``  `.:+//:-----:-..```...--::::-...``   ``.-://.-:-://++/:-.-:    `os-`.yyo-         
        echo                    `       ````..----::/::::-:/+++++/:--.`      `.:/+/::::/:--...-/++//:-.`           ``.-+++//++o/--..`     +    -o/o+`:yo.         
        echo                   ````.-:////++/:/:--.--:://+/:--.`          `.:+o+/////:::+++oo+/-.``       ````..-::+ooo++/++/:+::-..````  :.   /-+os+:h`          
        echo             ``.-:/+osooo+:--.```.-:::/++//:.```           `./+so+////+syyyo/-.`        ``.--:////++++++++ooo+//:/+//://+///:..-   /:o/+ys:           
        echo       ``.-/++osysyy+:-.` ```-//++/:---``                `.:/++//+osoyyo:.`           `-::::/o+++++:---..`:-..`   :`    ```../.:   +:o/oo/            
        echo     `-+sys+osyh+:-``   ``:/+/+o/:-------------.--....--.--:/+/os++sys:.`              ``-ooo+++/.`       `/:.``  -.     ``-/:`-` `/+s/+o/            
        echo  .``osso//yyyo-`     `---```````````````````````````````-o:...-osss:-:/+.             .oo+++-` `-/:`     ``:.::  `/` ``:+o:..::.-:+:/:/++`           
        echo  ..+o.-/s+/..:y:  ``:/-           :/:::-.-`            `/o`   `sys-   -+s`           -o/:` `-+.   .::` -//`./-..``:-:+o/::::///:-+:-/-/o:            
        echo  `.s/  `/+   `s+`.::...``````     `:/+-+++`             :o`   `yos``  `/s-          -+/.`-::--o.    :/`.-.``.//-:/oo//++//+/-``./-/--::s`           
        echo    .s:-:oy..-:ho/-`  .-://+:///`  `::+o.:.  ```````     `//--:so:+:````/o`         `o/:+y+:.`.+y`    :/  ``-:/+o:-`:::://-` ``:-```:::+-             
        echo     `-+syyhos+:`  ````````````.````://+`   `-+/`+o:`     `.-:/-` .:///+:`          /:::+/+o+s/`+s     -/-/o+/-``  .::-`   `-::::---:/:`              
        echo       `+so+//: `:+///ooooooo+++++/::::-::::/::////:.`      ```````                 //`+/+//o/:+`s.     -s.`   `-::.    `.:/.  ``                     
        echo      -s:++//+o`o::++osssoo+sssssooooooosyyssso+/+++/-/`  `/+/::--:::--`           `:--/o-+/.-///`/      +.``:-:.   ``-/:-`                          
        echo   `::s/o/::++o/o/y//:/++oo+++//+++o+ossooososossssso/-o`./``://:::/+:--::`      .-::::+/.o/sss/o-..     ://-``  `.-:/-`                              
        echo   -yssso+++++++ooosoo/:::+o+/+++++ooossyyysysosysoyhy/+:o`:+::::/:::+y+--/----:/o+++///.:/o:ss/o+./`    -:``  `://-``                                
        echo    `.-++os/:o+:/oosy+++oo/++////+//////:+/::/+o+//////:/+//-://+++o+/+++++:-::///-./`/:oo:+/y/+oo`o://-..: .:/:.`                                   
        echo       `-+oyo++--s.syhhy+`:yyooossoosssso..o/////+o+o+++oo+++/////////::::::---``` :- -/+`o--/s.o+`y````../:-``                                       
        echo         ``-:oo/s/s+s+os: y/````..--:/o+``.y+syhhddyys+-+-/:-+..........:yo.`      o` `/s+s/+yoos/`y`                                               
        echo           `.:/-s::-.// o-          :/`-s//::-:++osos/:``/--/::://////+o.    `..:s`  //o+-+o:so//s`                                                 
        echo                 ```./::+.-o/::::::-../h-`.:/o+////:://..+::/::++//+//:.``  `.--.``h:  -+o/:o:+os.oo                                                  
        echo                     `-/..-:///-..---:+so/.``./:--.```  `.::/:      ``````..-./    :y`  :/--//::-++/      /^|                                            
        echo                      `.-:-----------::.`-::/::/::.-:--....------..--...````  /.   `-s. `:/.`...+:/.     / ^|                                          
        echo                         `````......``      ```      ``````````      `        `/.    .o/` .::/:/-:-     /  ^|                                        
        echo                                                                               `:-`   .os-` ``.-:-     /   ^|                                      
        echo                                                                                 -/-...-/s+://:.`          ^|                                           
        echo                                                                                  `.........`              ^|                                           
        echo                                                                                                           ^| TIRES          
        echo
        echo.
        echo.
        echo.
        echo.
        echo.
        echo.
        echo.
        set /p answer=What do you want to check first ? You can also go back (B)
        if %answer%==1 goto TIRES_1
        if %answer%==2 goto BOOT_1
        if %answer%==3 goto ENGINE_1 
        if %answer%==B goto TUTORIAL_MAP
        goto CAR_VIEW_1

            :TIRES_1 
            cls 
            echo /:::::::::://////+++++yydNMMMMMMMMMNdhhddhhyyysyyyhyyyyyyhhyyhhhhhddddddddddhhhhdddddddddddhhyhhhyyysyssssosssshyhhdNNNNNNNNNNNNNNNNMNNNNdyooooooo++++
            echo :::::::::://///++++++hymMMMMMMMMMNdhhhhysyyyyyyyyyhhhhhhhhhhhdhhdddhddddhhddddddmmdddddddddddhhhhhyyyyssyyyssossyyyhhdNNNNNNNNNNNNNNNNNNMNdyoooooooooo
            echo ::::::::://///+++++ohhNMMMMMMMMNdhdhhhysssyhyyyyyhhhhdddddddhdddddmmmmdmdddddmdmmmmmmmmmmmdddddhddhhhhssyyyssssssyyyhhhdNNNNNNNNNMNNNNNNNNmhsooooooooo
            echo :::::::://////++++oydNMMMMMMMNmhhyhhhhysyyyhhhhhhhddddhddmdmmmmmmmmmmNmmmmmmmmmmmmmmmmmmmmmmmmmmddhhddhhhyyyyyyysssyhyyyhdNNNNNNNNNNNNNNNNNdhsoooooooo
            echo ///////////////++oydNMMMMMMMNddhhhysyysyyyhhhhdhddddddmmmmmmmmmmmmdmmmmmmmmdddmmmmmmmmmmmmmmmmmmmmddddddddhhyyyyyyssyyhyydhmNNNNNNmmNNNmNNNNhhoooooooo
            echo //////////////++oydNNMMMMNNmddhyyyyyyyyyhyhhdhdhddddmmmmmdddmmmmddddmdhhhyyyyyyyyhhddddddmmmmmmmmmmmmmmddddhhhhyyysyyysssyyyhNNNNNNNNNNNNNNNmhsooooooo
            echo /////////////++ohyhNNNNNNNdhdhyyyyyyyyyhhddddhddddmmmmmmddhhddhysssssosssssoossooooooossyhddddddmmmmmmmmmmdddhhhysyssyyyhsyyyhmNNNNNNNNNNNNNNhhooooooo
            echo /////////////++shsmNNNNNmhhhhysyyyyyyhhddddddddddmmmmdddhhysoo+o+o+++++++++++++//////++ooooosyhddmmmmmmmmddmdddhhhhyyyyyyyysyyymNNNNNNNNNNNNNmdsoooooo
            echo ///////////+++ohshNNNNNmdhhyyyyyhyyhhddddddddmmmmmmmdddys++++//:/++::--:::::/+osyhhyso+/::/+ooooyhdmddmmmmmdddddddhhyyyyyysssyyyhNNNNNNNNNNNNNdhoooooo
            echo ++++++++++++++yssmNNNNmdhhyyyyhhyhhddddddddddmmdddddhso++//:/+syhdho:----------:/ohysssyyyo+/:/+oooyhdhddmmmmddmddddhhyyyyyyysyshhNNNNNNNNNNNNddoooooo
            echo +++++++++++++oysyNNMNNdhhhyyyhhhhhddddmmmdddddddhdys+++/:/ohddhssyhs/::::::-----:/hmdyysosshhy+//+ososhhhmmmmmdmmddddhyhyyyyssssyyhNNNNNNNNNNNydsooooo
            echo +++++++++++++ssshNNMNhdhhhhhhhhhhddddddddddddmmdhsso++/+yyyyssydmNdy/::::::-----::yNNNNNmdssys/---:/+ooshhddmmmdddddddhhyyysssysyysdNNNNmmmNNmydyooo+o
            echo oooooo+++++++y+ydNNNdhdyyhhhhhddddddddmdddddhddsooo++o++osoydmNMNNmy+:::::::-----:sNNNNNmhys+-.----::/+sosdddmmmmmmmdddhhhysosyyyysymNNNNNNNNdyddo+++o
            echo ooooooo+++++sooymNMmhhhhyyhhhdddddmmmmmddddhdhooo+/o+-.`.-/sddNNNNmyo/:::/::------omNNdyss+-.:::::::/+//ooohdddmmmmmmdddhhhyssyssosshNNNNMNmdhhdh++++o
            echo soooooo+++++h+yhNNNdhhhhhhhhhhddddmmmmddddhhyoo+++/-..`````.-+shmNmyo//:::/::-----+ddyso+:--::::::://+s/:/ooyhdmmmmmmmdddhhyssssyyysshmmdddddhhdd++++o
            echo sooooo+++++oyohdNNdhhhhhhhhdhhhddmmmdddddhdso+++/:---...``````.:ohdyo/+/:::::::---:oo+/---:::://////+oyy+:/oosddddmmmmddddhhyssssyysysmmmmmmmmmmmyyhhd
            echo ssoooo++++oy/ydmNNdhhhyhhhhhhhdddddddhhhhds+//+/:::::---..```````-+s+//:::------::::---::////////++++oydh+:/ooyhddmmmmmddddyhyysyssyysdNNNNmmmmmmdhdmd
            echo ooooooo+++soohdmNmdhhhhhhdddhddddmmddhhhdy///+/:::::::::---..````.++:::::://///:---:////////+++++o+osyysyh+:/o+hhhdmmmmmmddhhhhyysyyyshNNNNNNNNNmdhooo
            echo +++ooooooos/yddmMdhhhhhhhhdhddmmmmmdhyyhh+/:++sso/:::::::::--..``:+:/+osyddmhyymhys+:::/++++++++ooshNms++hy/:/oomdhdmmmmmdddhhhyysyyyyyNNNNNNNNNmhhssy
            echo ///++++ooso+yhhmMdhdhhhhhhhhddmmmmmdhyyho//:+sdhyyyo//:::::----.-/+syyyyssymdhdmyyyhyo/-:+oooo++sdNNNNho+oho:/+oyhhhmmmmmdddhhhyyyyyyhsmNNNNNNNNNdhyyh
            echo +++++oooss++syhmNhhddhdhdhhhhdmmmmmddhhd+////ysoshNNdyo+/::::---/shddhoo+osyhhyo+oosyyhs:-:+++ohmNMNmNms++yy///oodhhdmmmmmddhhyyyyyyyhymNNNNNNNNNNmmmm
            echo sssssssssys/+shmNhdddhdhhhhhhdmmmmddyhdy////+s++odNMNmdhyo/::::+hmsoyNosddhhhhddho+sddmmy/---:+osyyyyhhs+oyy+//o+dhhdmmmmmddhhyyyhyyyyydNNNNNNNNNNNNmm
            echo yhhhyyyhhhd++shmNdhhhhhhhhhhhdddmddhsyds////+s//omNNmddddhso/:/sydhhhyymdyoo++shmmomhsymmy/-...--:://////+o+///oohhddmmmmmdhhhyyyyyyyhydNNNNNNNNNNdhyy
            echo dddhdddddmmh+shmMhhdddhhhhhhhhhdddhhshds::/:+o++ohysoo+/:/oss/oso+++++dmhssssooshNsydhdmdy+:/::---..........-//+ohdddmmmmmddhhyyyyyyyhydNNNNNNNNNhsys+
            echo NNNmNmNNNmmNsshmMdhhhhhyhhhhdddmddhhyhhs///////:---.......-:yoo+:+////smdysyysyymd+++osyhyo://///////////:::///+ohdddmddddddhhhyyyysyhymNNNNNMNNNyyyss
            echo MMMMMMMMMMNNdohmMmdhyhhyhyhdmmdmdddhyhhy+//+/--............./ss+://+oosshdhhhhddy+//++s+ys+/++++++++++/////////o+ddddmmdddhdhhyyyhyyhhyNNNNNNNNNNdhhhh
            echo MMMMMMMMMMMNmshNMmdhhhhyyyyhdmdmddhhdyhd+/+o:.......---------+oo/+sdyssds+osoosyyyys+o/+os/+soooooooo+++++++///oodddmmmdddddhyyyyyyyhyhNNNNNNNNNNNNmmm
            echo MMMMMMMMMMMNdyyNMNdddhhyyyyyhddddddhdhhms/++/-----::::::::::::oo++smhsyds/////dhsshmss++o+/sssssssssssssoso////ohdddmmmmmdhhhhhyyyyyyhdNNNNNNNNNNNNNNN
            echo MMNNMMNMMMMNdyyNNNmdhhhhhhyhyhdhdhhhhhhdd+//+::////////////////+++oyysoo/::::/shhhdhsso++/+shhyyyyyysyyyyyo://+sddddmmmmmdhhhhhyyyhhhyNNNNNNNNNNNNNNNN
            echo NNNNNMMMMMNNdsyNNNNddhhhyhyyyyhhdddddhhddy+//+//////////+++oossooo+++/:/:..--/++oooo++++/:/odNNNNNmhssyhyo///+odddddmmmmddhyyyyyyhyhydNNNNNNNNNNNNNNNN
            echo NNNNNNNNNNNNhshNNNNmddhhyyyhhhhdddddddhhdds///+++++ooosyhdmmNNdssssss++//:---:////+ooo++/:-/ohNNNmy+::+so////ohdmmmdddddhhhhhhyyyyyhhNNNNNNNNNNNNNNNNN
            echo NNNNNNNNNNNNyshNNNNNdddhdhhhhhhdddddddhhhdds+//++oyhyoohmNNNNmo+/+/++oooo++///+osssso++++/:-:+sdh+/::+s+////ohddmmmmddddddhhhyyyyyhymNNNNNNNNNNNNmmmmm
            echo mmmmmmmmmmNNyyyNNNNNNdhhdmdhhhhhhdhdddddhhhds+//+:+o+:::+sdmmo//++////+++/++oyhyyssoooo++++/--:+:::+oo/////ohdddmmmmdddddhhhhhhyhdhdNNNNNmmmmmmmmmmmmd
            echo mmmmmdddmmmNsoymNNNNNmddddddddhdhdhhdddddhyhdy+//+:-///--:+yo////+o+/++++++odNNhssssoooo++++/-.::/+o/:///+sddddmmmmdmdddddhhhhhhhyhmmmmmmmmmmmmdmddddd
            echo dddddddddmmmoosmmNNNNNmdmddhhhdddhhdhdddddhyyhds////:-:///os/////+++++++++ohNNNNdssssoooooo+++:..-://///ohddddmmmmmmdddddhhhhhhdyymmmmdmmddddddddddddd
            echo hhhhddddddddoosmmNNNNNNmdhdddhhddddddddddddhhyydho//++/::://////++++++++++sddddddhssssssooo++++/::////oydddddmmmmmmmddddhhhhhhdhhdddddddddddddhddhhhhh
            echo yhhhhhhhddddoosmmmNNNNNNmddhhhhhhhhddddddddddhhyddho/:/+/:---:/+++++++o++/::::::::ossssssoo++++++///+yhddddmmmmmmmmddddhhhhdddhyhhhhhhhhhhhhyhhhhhhhhy
            echo yyyyhhhhhhhhs+yddmmmNNNNNmddhhhyyhdhhdhdddmdddddhhddhs+///+/:--/++++ooo+/:-------:/oo+++///////://oydddmmmmmNmmmmmdddddhhhdmmhyhhhhyhyyyyyyyyyyyyyyyyy
            echo yyyyyhhhhhhhy/hdddmmmmNNNNmdddhhhhhdddddmmmmddddmdhddddhs+/://+++o+oooo:.-::://////:::::::/:::/oyhdhhdmmmmNNNNmmmmmmddddddddhyyyyyyyysyyysssysyyssssss
            echo ssyyyyyyyyyys+hhddddmmmmmmNmmdhhhhhhhhddddmmmmmdmmmmdddddddhs+//::///++/::::::::::////::::/osyhhhhhddmmmmmmmmmdddddddddddddyyyssssssssssssssssssssssss
            echo oosssssssssssyyhhhhddddddmmmmmddhhhhyyyyhhhhhddddddddddhhhhddddhhso//::::-::::::::///+osyhhhyhhhhhddddddhhhhhhhyhhhhhhdmmhysssssssoooooooooooooooooooo
            echo oooooossssssssyyyyyyhhhhhddddmmmmmhhyyysossssssyyyhhhhhhhhhhhhhhyyyyyyyyysyyyyyyyyyyyyyyhhhhhhhhhhhhhhyhyyyyyyyyyyyhhddhysssoooooooo+++++o++++++++++++
            echo +++++++oooooooooosssssysyyyhhyhdmdmdddyyhhhhyyyyyssssyyyyyhhhhhhhhhhhyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhyhyyhhhhhhyyhhdddhyoooo+o+++++++++++++/++/+++++/++
            echo //+++++++++++++++++++ooo+ooosssyyyhdmmdddddddddddhyyhhhyhyyyyyhhhhhyhhhyyyyhhhhyhhyhhhhhhhhhhhhhhhhhdddddddmdddddhhso+++//+///+///////////////////////
            echo :://////////////////////+/+///+++o+ooosyyhhhdhddddmmmmmmmmdhhhhhhhdhhddhhhhhdddddddddddhdddddddmddddddhhhyyysoso+++//++++/+//++++++//+/+++/+//++/++++/
            echo :///:////://////:////////////////////////+////+/+++o+ooossyyyyyhyhhhhhhhhhhhhhhhhhyhyyyyyyysssoo++/+////////////////////////////////////////://///::::
            echo ::://://:///////////:////////////////:////////////////////////////////////////////+//////////////////////////////://:///:::////////://:/::///:///:/:::
            echo /:/::///://///////////:////:///////////////////://////:/:///::///:/::::::/:/:/:////////://///////////////:/://:////://:://:://///://////::///:://:::/:
            echo /::/:/://///////////:::://////:////://////::::/://:://////:/::::/:/:///://///:://///:/:::/::/:/:::::/:/::///:/:////////://:::://::/:////:///////:::/::
            echo ::::::/::::/:/:/::::::/::///://:::/:///::::/:/::/:/::/:::://:///////://:://:/://///://:/::/:://////::/:/::/://////:////////////:/::////:::::/:/:/:::/:
            echo.
            echo.
            echo The tires are blown. 
            ping localhost -n 5 >nul 
            cls 
            echo That's probably why the car has stopped. 
            set TIRE_CLUE=1
            pause 
            goto CAR_VIEW_1

            :BOOT_1
            cls 
            echo hyyhddddddddddddddddddddddddddddddddhyssssyhdddddddddddddddddddddddhhysssssyhdddddddddddddddddddddhhdhdddNNdyyho `` ..`   `  `-:--:-::::
            echo shyyNNmdddddddddddddddddddddddddhhysssshdddddddddddddddddddddddddddddddmdysssssyhddddddddddddddddhhhhhddhddyyyh..`` .-.  ..`  /+++++++++
            echo -syyyhhddddhddddddddddddddddddhysossyhdmmmdddddddddddddddddddddddddddddddddhhysoossyhhddddddddhhhhhyyyhhhhhyyyo`.`- .:.  `.. .+ysssssssh
            echo .-syyyhhddhyssyyhhddddddddhyssosyhddmmmdddddddddddddddddddddddhddddddddddddddddhhysoossyhhhhhyssoooooyyhhhyyyy+::/od/...dy//:-+hhdmmmmmN
            echo ---syyyhhhhyssooooossyyyysoosydmmmmmmddddddddddddddddddddddddhhhhhhhhddddddddddddmmhyyso+//++oooosyyyhhhhhyyyhmmmmmmdyyoomNm+--:::/++osy
            echo ----syyyhhhhhhhhysysso++osyhdmmmmmdddddddddddddddhhdddddNmdddddddhhhhhhddddddddddddddddhyysyhhhhyyyyhhhhhyyyy+/+++++++///++/:-----------
            echo ----:yyyyyhhhhhhhhddddddddmmmmdddddddddddddddddhhddddddddddddddddhdddhhhhdddddddddddddddddddhdhddhyhhhhhhsyys.................-..-------
            echo :----:yyyyhhhhdhhdmdddddmmmmdddddddddddddddddddddddddhhhdddhhhhhhhhhhhhhhhhhhhddddddddddhdddddhddhhdhhhhyyyy:............------------..-
            echo ------:yyyyhhhdddhmddddddhhyyyyyysssssooooo+++++++++++oydmdyo++/////////////////++++++++shddddhdddddhhhysyys.-.........-----------------
            echo -------/yyyyhhhdddmmdddddhyo+////++++++oooooosssssssyhhmmmmmhyyyyyyyhyyyssssssssssooooosyhhddddmddddhhhyyyy:.....-----------------------
            echo --------/yyyyhhhdddmdddddddhhhhhhhmmmdhhhhhhyhhhyyssyysyssssyyyyyyyyyyyyyyyyyyyyhhyyyhhhhhhddhdmhhddhhhyyss-......----------------------
            echo -------.:syyyhhhhyydhyyssssooo++++///::----.---.....`..````...........................---:://++//ossssssy/....--------------------------            
            echo ------.....-.....s-:---------::::::::::::::::::://///////////////////////////:://////://////////../:----...`````.-...---------------::::
            echo -..--.`..-::::/++o-:sssooooooooooosssssssssssssssssssssssssssssooosssssssssssssssssssssssssssyyh//osssoo+:/:.`    `.....-------------:::
            echo -..`  `-+oossyyyyyssddddddmdddddddmmmmmmmmmmmmmmmdhhhddmmmmmmmmddhhhdmNNNNNNNNNNNNNNNNNNNNNNNmhNdddNmmmmhs///.      `.--.-----------::::
            echo `   ./ooosdmNNNNNmmmmNhNmNNNNNNNNNNNNNNMNNNNNNdyyhdmmddddhhhddddddmdhsymNNNNNNMMMNNNNNNNNNNNmmhNMMmNNNNNNmy+:+:`       ..-.------------:
            echo  `-+sosydNNNNNNNNNmMMNhmmNNNNNNNNNNNNNNNNNNNdoohmdhhhhyyyyyyyyyyyhhhddy+ymNNNNNNNmmNNNNNNNNNNmdNNMmNNmmmNNmhs:/+-``      `.-------------
            echo /ososhdmmmmmmmmmmmdNNNdmNNNNNmNNNNNNNNmNNmmh/oddyhyssyyyyyhhhhhhyyhyyydh:ommNNNNmmmNNNNNmmmmmmdNNNdmmddddmmmhs/:+/.````    `.://:-------
            echo osshdmmmmddddddhhdhNNmhmNNNNNNNNNNNNNmmmmmd:+mhyhssyhyyyhdddddyyhhyssyyds-hmmmNmmdddddddddmmmmdmmmdmdyyhhddddhyo:/+-``````````./o+:--:::
            echo yhmmddddmddhhhyyyhdmddhdmmmmmmmddddmmmmmmms-ddshsyyhddhyyyyohNmdhyhyysyhd.smmmmmmmdhyyyyyyyyyhhddddmysssyyhhhddys/:+/.``````````./so/:::
            echo mNNmdhddddhyyssooshddddddyyyssssoooohmmmmm+-mhyyyddmNdyhddhhmmNmdyysdsyyh.ymmmmmdyoooooooooossydddhy+++++ooyyhmNys/:/+-```````````./ss+:
            echo NNNmhyohhdhsoo++//ohhdmmdhhhyyyhhhyyhmmdddy-hdyyddhddmmNNNNNmmmmdssodyyh+:mmddmddysosyhhhhhhhhddmdho::/+/::oyymNNho+:/+:.```````````./sy
            echo mmmmhs+yhhy/:::-::+yhdmmmmmmmmmmmmmmmdddddd+:dhyyhsyshddmmddhyhyooooyyh+:hddhdddmddmmmmmmmmmmmmmmdhs+:/oooosysdNNNdoo::+/````````....`-+
            echo mdddss/yyhs:::--:/oyhddmddmmmmmmmmmmmdddddddo:yhyys+o+ossssooo++++osys/oddhhddhdmdddmmmmmmdddddhddhyo:://ossyyymmmNdoo:-//`````````````-
            echo mddhss+hhhs::--:/+syhddddddddddmmmddmmddddhddh+/syyyo+//+++////+osso/ohdhhhddhdmmddmmmmmmddddddddhhyo/:--+sssysmmmmNy++--+-````````````.
            echo mddyso+hhhs:---:/osyhhhddddddddddmmdmmmddddhhddhs+++osyyhhhhyso++++sdhhhyhhhhdmmddmmmmmmmdddddddddhys+/--/sssssmdmmNh/+::++``````......`
            echo mddsy/ohhhs:---/+oyyhdddhhhhddddddmmmmmmdddddhhhhddhysoooooooosyhhhhyyyhhhhdmmNmmmmmmmmmdddddddddddhso+:-:ossssddddmy++::oo.`....------.
            echo mdhsy/shhhs:--/+oshddhhhhhhhhdddddddmmmmmmddhhhhhyyyyhhhhhhhhhyyyyyyyyyhhdmmNNmmmmmdddddddddddddddddhyo/::osysshmddhoso--+o--------::::-
            echo ddyss:yhhds+//+sydddhdddhhhhhdddddddmmdmmmmmmdhhhhhhhhyyyyyyyyyyyyyyhhdmmmmNmmmddddddddddddddhhhdddddddysyyyyyyhmmmmoso::oo:::::///////:
            echo ddyso/ydddhhhdddddddddhhhhhhddddddddddddddmmmmmmdddhhhhhyyhhhhhhhhdmmmmNNmmdddddddddddddddddhddddddddmhhhyyydmddmmmm+so:/oo////////////:
            echo ddss++ydmdddddddddddddhhhhhhhhdddhhhhhhdhhdddddmmmmmmmmmmmmmmmmmmmmmdddddddddddhhhhhhhhhhhhhhhhhhddddddy/://ymNNNNNm+s+:/o+/////////////
            echo ddyssshmmmmmmddddddddhhhhddhddddhddhdddddhddddddddddhddddddddddhddddddddddhhddddddhdddhdddddddddddddddmh//shddmNNNNd+o+-+o+///////////:/
            echo dmyyyydmmmmmddddddddddddddddddddhhhhddddhddddddhdhdhhhdhhdddddhhhddddddhddhhddddddddhdhhdddddddddddddddNddhhyyhdNNNyos+:oo-``````.....``
            echo mmmmdddmmmmmmdddddddhhdhdddhhdddhhhhhhhhhdhddhhhhhhhhhhhhhddddhhhddddddhhhhhhhhhddhdhddhhdhhdhhdhddddddmmmdyyoohmNNyss+:oo//++++/+ossso+
            echo mmmmmddddmmddddddhhhhhddddhhddhhhhhhhhhhddhhhhhhhhhhhhhhhhhhddhhhdddddddhhhhhhhhhhhhhhdhhhhhhhhhhhhhdddddmmmmhdmmNNoos::ooyyyhyyhhddddhh
            echo mmmmddddddddddddhhhhhhhhhhhddhhhhhhhhhhhddhhhhhhhhyhdhhhhhhhddhhhhdhhhhhhhyyyyyyhhhhhhhhhhhhhhhhho//+o+oodmmdmmNNms+o/--oohhhhyddddmdddd
            echo mmmmdddddddddhhhhhhhhhhhhhhhhhhhhhhhhyhhhhhhhhhhhhysyssohhhhdhhhhhhhhhhh:/o++++-ohhhhh:::-::/hhhhs++osssyyhhhhhhs+++:.--ooyhhyyddddddddd
            echo ssssssssssssssssssssssssssssssssssssoosssssssooooo+/ooo/++++ooooooooooo+:::::-:-:++++/:::::::////////++++++++++///-...-:oshhyyyhhyyyyssy
            echo ++++++++++++++++++++++++//////////////////+//////////////////::///:::::::::::::::::/:::::::::::::::::--------::::---::::/osooooo+++++/+o
            echo ::::::::::::::-------------------------------------------------------------------------------------::::::::::::::::::::://///////+////os
            echo ////////////////////:::::::::::::::::::::::::::::::::::::::::::://///////////:::/:::::::::::::::::::-----......--..---...------::::::::/
            echo ---:::--...........---------------------------.....................```````````````..........-------`          `.- ....`````````.```````.
            echo `.--:::-.```        ```                                                                                        ``          `.-::-::.`...
            echo     ```                                                                                             ``````````.....----:://+o+ssssyyssss
            echo.
            echo.
            echo.
            echo.
            echo.
            echo Nothing special in the boot, just a spare tire.
            set BOOT_CLUE=1
            pause 
            goto CAR_VIEW_1

            :ENGINE_1
            cls
            echo The front of the car is badly damaged
            echo.
            ping localhost -n 3 >nul 
            echo He really drove like a maniac.
            pause 
            goto CAR_VIEW_1
        
        :WITNESS_1
        cls 
        echo T 
        ping localhost -n 2 >nul 
        cls 

        echo T I 
        ping localhost -n 2 >nul 
        cls 

        echo T I P 
        ping localhost -n 2 >nul 
        cls 
        
        echo T I P:
        ping localhost -n 1 >nul 
        cls 
        
        echo T I P
        ping localhost -n 1 >nul 
        cls 

        echo T I P:
        ping localhost -n 1 >nul 
        cls 

        echo T I P
        ping localhost -n 1 >nul 
        cls 

        echo T I P:
        ping localhost -n 1 >nul 
        cls 

        echo T I P
        ping localhost -n 1 >nul 
        cls 

        echo T I P:
        ping localhost -n 1 >nul 
        cls 

        echo T I P
        ping localhost -n 1 >nul 
        cls 
        
        echo T I P:
        ping localhost -n 1 >nul 
        cls

        echo T I P
        ping localhost -n 1 >nul 
        cls  

        echo T I P: You're about to interrogate an eyewitness.
        ping localhost -n 3 >nul 
        cls 

        echo T I P: When interrogating, you have to figure out if a person's lying according to the clues that you found. At the end of each case, you'll get a report if you've made the correct decision.
        ping localhost -n 8 >nul 
        cls 

        echo T I P: It's always better to first search for all clues before talking to anyone. In this case, it was better to go to the car first.
        ping localhost -n 6 >nul 
        cls 

        echo T I P: You mostly have to ask about 3-4 questions. 
        ping localhost -n 5 >nul 
        cls 
        
        echo T I P: You can always type in NOTEBOOK to view your notebook with clues and questions. Whenever you have to interrogate a person, a notebook will appear automatically.
        ping localhost -n 8 >nul
        cls 

        echo "Hello ma'am, we'd like to ask you some questions".
        set Q1_TUT=1
        set Q2_TUT=1
        set Q3_TUT=1
        set Q4_TUT=0
        echo.
        echo.
        pause
        goto NOTEBOOK

                        :NOTEBOOK
                        cls
                        echo.
                        echo.
                        echo                        ______________________________________________________
                        echo                        ^|                                                    ^|
                        echo                        ^|                     NOTEBOOK                       ^|
                        echo                        ^|                                                    ^|
if %Q1_TUT% GTR 0       echo                        ^| 1. What exactly have you seen ?                    ^|
                        echo                        ^|                                                    ^|
if %Q2_TUT% GTR 0       echo                        ^| 2. How did the man look like ?                     ^|
                        echo                        ^|                                                    ^|
if %Q3_TUT% GTR 0       echo                        ^| 3. Did you go near the car or was there anyone     ^|
if %Q3_TUT% GTR 0       echo                        ^|    suspicious around it ?                          ^|
                        echo                        ^|                                                    ^|
if %Q4_TUT% GTR 0       echo                        ^| 4. Did you see what they took ?                     ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|      E                                 C           ^|
                        echo                        ^|  ^<-CLOSE                            CLUES -^>       ^|
                        echo                        ^|____________________________________________________^|
                        echo.
                        echo.
                        
                        set /p answer=
                        if %answer%==1 goto Q1_TUT
                        if %answer%==2 goto Q2_TUT
                        if %answer%==3 goto Q3_TUT
                        if %answer%==4 goto Q4_TUT
                        if %answer%==C goto NOTEBOOK_CLUES
                        if %answer%==E goto TUTORIAL_MAP
                        goto NOTEBOOK

                            :Q1_TUT
                            cls
                            set Q1_TUT=0
                            echo "I saw a man stepping out of the car in a hurry. Someone followed him in that alleway. I didn't go after them though".
                            set CLUE_MAN_RUNNING_TUT=1
                            echo.
                            pause 
                            goto NOTEBOOK

                            :Q2_TUT
                            cls 
                            set Q2_TUT=0
                            echo "He was only wearing a grey hoodie and blue jeans. I didn't see his face".
                            set CLUE_SUSPECT_TUT=1
                            echo.
                            pause 
                            goto Notebook

                            :Q3_TUT
                            cls 
                            set Q3_TUT=0
                            echo "I didn't go near it. But there were a couple of men walking around the car and taking something out of the car and then drive away".
                            set Q4_TUT=1
                            echo.
                            pause 
                            goto NOTEBOOK

                            :Q4_TUT
                            cls 
                            echo "Yes, a black bag. It was heavy as two of them had to carry it".
                            set CLUE_BAG_TUT=1
                            set Q4_TUT=0
                            echo.
                            pause 
                            goto NOTEBOOK

                                :NOTEBOOK_CLUES
                                cls 
                                echo                        ______________________________________________________
                                echo                        ^|                                                    ^|
                                echo                        ^|                       CLUES                        ^|
                                echo                        ^|                                                    ^|
if %TIRE_CLUE% GTR 0            echo                        ^|   The tires on the car are blown. Someone probably ^|
if %TIRE_CLUE% GTR 0            echo                        ^|   shot them.                                       ^|
                                echo                        ^|                                                    ^|
if %BOOT_CLUE% GTR 0            echo                        ^|   The only thing in the boot is a spare tire.      ^|
                                echo                        ^|                                                    ^|
if %CLUE_MAN_RUNNING_TUT% GTR 0 echo                        ^|   The eyewitness saw a man running out of the car  ^|
                                echo                        ^|                                                    ^|
if %CLUE_SUSPECT_TUT% GTR 0     echo                        ^|   The man was wearing a grey hoodie and blue jeans ^|
                                echo                        ^|                                                    ^|
if %CLUE_BAG_TUT% GTR 0         echo                        ^|   Some man took a heavy black bag out of the hood. ^|
if %CLUE_BAG_TUT% GTR 0         echo                        ^|   Probably some money.                             ^|
                                echo                        ^|                                                    ^|
if %CLUE_KNIFE_TUT% GTR 0       echo                        ^|   There was a knife covered in blood. Could just be^|  
if %CLUE_KNIFE_TUT% GTR 0       echo                        ^|   a kitchen knife from the restaurant, but         ^|
if %CLUE_KNIFE_TUT% GTR 0       echo                        ^|   according to the situation, it was most likely   ^|
if %CLUE_KNIFE_TUT% GTR 0       echo                        ^|   used to attempt a murder.                        ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|      B                                             ^|
                                echo                        ^|  ^<-BACK                                            ^|
                                echo                        ^|____________________________________________________^|
                                echo.
                                echo.
                                set /p answer=
                                if %answer%==B goto NOTEBOOK
                                goto NOTEBOOK_CLUES

            :ALLEYWAY_1
            cls 
            echo ____________________________________________________
            echo        o                            3     ^| o
            echo        2       alleway              o     ^| 4
            echo _________________       ____________________________   
            echo                ^|1     ^|
            echo                ^|o     ^|
            echo                ^|      ^|          
            echo     hotel      ^|   B  ^|          restaurant
            echo.
            echo.
            echo.
            
            set /p answer=
            if %answer%==1 goto 1_TUT
            if %answer%==2 goto 2_TUT
            if %answer%==3 goto 3_TUT
            if %answer%==4 goto 4_TUT
            if %answer%==B goto TUTORIAL_MAP
            if %answer%==NOTEBOOK goto NOTEBOOK
            goto ALLEYWAY_1

                :1_TUT
                cls 
                echo There's nothing here, just some trash.
                pause 
                goto ALLEYWAY_1

                :2_TUT 
                cls 
                echo There's just some dead rats here. That's probably why it smells so bad here.
                pause 
                goto ALLEYWAY_1

                :3_TUT
                cls
                echo                                                                                              `.   
                echo                                                                                            .+yyy-  
                echo                                                                                         .+hmNNyso  
                echo                                                                                      ./hmNNNNNhdh  
                echo                                                                                   `:ymNNNNNNNmdyy  
                echo                                                                                 .odNNNNNNNNNmssss  
                echo                                                                              `:ymNNNNNNNNNNmhyyo-  
                echo                                                                            .+hmNNNNNNNmNNNNho/.`   
                echo                                                                          -sdNNNNNNNNNNNmho-`       
                echo                                                                       `:ymNNNNNmmNNNds:.           
                echo                                                                     .+hmmNNNNmNNNds:`              
                echo                                                                   -sdmmmNNNNNNdo:`                 
                echo                                                                `:ymmmmNNNNNds:`                    
                echo                                                              .:odmmmNNNNds:`                       
                echo                                                            -/oo/-+mNNmh/.                          
                echo                                                          ./so+:..shds-                             
                echo                                                       `-://+os:`:hy-                               
                echo                                                    `.://:::::/o+:ss`                               
                echo                                                  .-////:-------:ooys-                              
                echo                                               `-:/:::---......-../ohh+                             
                echo                                             .://::---........`....:o/`                             
                echo                                          `-//::---......````````--.                                
                echo                                       `-:/:::--......````````...                                   
                echo                                     .://::---.....````````...`                                     
                echo                                  `-//::----.....````````..`                                        
                echo                               `.:/:::---.....````````..`                                           
                echo                             .-//::----....````````..`                                              
                echo                          `-:/:::----....```````..`                                                 
                echo                        .://:::----...```````..`                                                    
                echo                     `-://:::---....``````..`                                                       
                echo                   .://::::---....`````````                                                         
                echo                `-://:::----....```````                                                             
                echo              `-///:::----...````````                                                               
                echo            `-///:::---....```````                                                                  
                echo          `:///:::---...``````                                                                      
                echo        `:///:::---..``````                                                                         
                echo      `-///:::---..`````                                                                            
                echo    `-///:::---..```                                                                                
                echo   .///:::--..``                                                                                    
                echo `:/:::--.``                                                                                        
                echo `````                                                                                              
                echo.
                echo.
                set CLUE_KNIFE_TUT=1
                echo.
                echo There's a bloddy knife laying on the ground. There might be something deeper than just GTA. 
                pause 
                goto ALLEYWAY_1

                :4_TUT
                cls 
                echo Behind the wall there's a man covered in blood. 
                ping localhost -n 4 >nul 
                cls 

                echo You check his pulse. 
                ping localhost -n 2 >nul 
                cls 
                
                echo He's still alive. Call the ambulance !
                ping localhost -n 3 >nul 
                cls 

                echo T 
        ping localhost -n 2 >nul 
        cls 

        echo T I 
        ping localhost -n 2 >nul 
        cls 

        echo T I P 
        ping localhost -n 2 >nul 
        cls 
        
        echo T I P:
        ping localhost -n 1 >nul 
        cls 
        
        echo T I P
        ping localhost -n 1 >nul 
        cls 

        echo T I P:
        ping localhost -n 1 >nul 
        cls 

        echo T I P
        ping localhost -n 1 >nul 
        cls 

        echo T I P:
        ping localhost -n 1 >nul 
        cls 

        echo T I P
        ping localhost -n 1 >nul 
        cls 

        echo T I P:
        ping localhost -n 1 >nul 
        cls 

        echo T I P
        ping localhost -n 1 >nul 
        cls 
        
        echo T I P:
        ping localhost -n 1 >nul 
        cls

        echo T I P
        ping localhost -n 1 >nul 
        cls  

        echo T I P: Whenever you have to call someone at the closest telephone booth, the number dial will appear. Type in the numbers of whatever number you have to call.
        pause 
        goto PHONE_DIAL_TUT

                :PHONE_DIAL_TUT 
                cls                                                                                                                               
                echo                                                                   ``..--------...`                                                                   
                echo                                                          `.:/+oooooo++////::////++oooooo+/:.`                                                         
                echo                                                    `.:+ooo+:-.```                    ```.-:+ooo+:.`                                                   
                echo                                                .:+oo+:.``       `.--:///++++++///::-.`       ``.:+oo+:.                                               
                echo                                            `:oso:.`     `.:/oshdddddhhyyyyyyyyyyhhdddddhso/:.`     `./oso:`                                           
                echo                                         ./so/.`    `-/ohdddhyo+:-..`````       `````.-:+oyhdddho/-`    `./os/.                                        
                echo                                      ./so:`    `:+yddhy+:.``                              ``.:+yhddy+:`    `:os/.                                     
                echo                                   `:ss/`    -/yddho/.`     .:/++++/:.            .:/++++/:.     `./shddy/.    `/so:`                                  
                echo                                 `/s+.`   .+hdds/.`       :so/-....-/os:        :so/-....-/os:       `./yddy+.   `.+s/`                                
                echo                               .+s/`   `/ydds:.         .so.    -ss/  .os`    `so.  /oss+-  .os.         .:sddy/`   `/s+.                              
                echo                             .+s:`   -odmy/.           `y+     /dymo    oy    yo    /--:mm.   +h`           ./ymdo-   `:s+.                            
                echo                           `/y/`   -sdds-`             :d`   `od:/mo    `d-  -d`     :/ods`   `d:             `-sdds-   `/y/`                          
                echo                          :y+`   -smdo.    ``..``      /h   `ymo/omy:    d:  :d      :/ody-    h/      ``..``    .odms-   `+y:                         
                echo                        `os-   .oddo.   -+oo++++oo/.   `d:  `////smy/   :d`  `d:   `.``.smo   :d`   ./oo++++oo+-   .oddo.   -so`                       
                echo                       -y+`  `/dms-   -so-``......:so.  :h:`     :h+  `/h-    -h/` -yssyy+` `:h:  .os:.``..` `-os-   .smd/`  `+y-                      
                echo                      /y-   .ymh:    +y-   odyyyy`  :h-  .os/.`   ``./so.      .os/...````./so.  -h:  `sssyhs.  -y+    :hmy.   -y+                     
                echo                    `os`   :dms`    -d.    dh-.`     :d`   .:+oooooo+:.          .:+oooooo+:.   `d:    .` `omo   .d-    `smd:   `so`                   
                echo                   `so`  `+md/      +y    `ssshho`    m-       ```                    ```       -m        .hd-    y+      /dm+`  `os`                  
                echo                  `yo   `smd-       /h        `hm:   .m.             `...--::--...`             .m.     .ods.     h/       -dms`   oy`                 
                echo                 `so   `smh.        `h+   :+//ody`  `so        `.-+syhddddddddddddhys+-.`        os`  `odmo//:   +h`        .hms`   oy`                
                echo                 os   `smh.          .so.`-/++/-` `-yo`     `-oyddhs+/--.``````.--/+shddyo-`     `oy-`-++++++/`.os.          .hms`   so                
                echo                /h`   omd.             -ss/:...-:+so.    `-ohmho:.                    .:ohmho-`    .os+:-...:/so-             .dmo   `h/               
                echo               .d-   /mm-     ``-:::-.`  `-:/++/:.`    `:ymdo-                           `-odmy:`    `.:/++/:-`  `.-:::-``     -mm/   -d.              
                echo               y+   .dm+    .+so/:::/+os/`            -ymh/`                                `/hmy-            `/so+/:::/os+.    +md.   +y              
                echo              :d`   ymh   `oy:`  `.:/- `/y/         `omd+`                                    `+dmo`         /y/`  ``::` `:yo`   hmy   `d:             
                echo              h/   :mm-  `yo   `+hho/-   .h/       .hmy.                                        .ymh.       +h.    sydm-    oy`  -mm:   /h             
                echo             :d`   ymy   /d`   smo+++.    .m`     -dms`                                          `smd-     `m.     ` ym-    `d/   ymy   `d:            
                echo             so   .mm:   os   `mm+-:hm/    m-    .dms                                              smd.    -m        ym-     so   :mm.   os            
                echo             m-   +md    :d`  `dm.  +ms   -d`    ymh                                                hmy    `d-       ym-    `d:    dm+   -m            
                echo            -m`   hms     oy`  -hhosds`  -h:    :mm.                                                .mm:    :h-      ym-   `yo     smh   `m-           
                echo            /h   `mm/      /h+`  `..`  .oy-     ymy                                                  ymy     -yo.    `.` `+h/      /mm`   h/           
                echo            os   .mm:       `:sso+//+sso-      `mm/                                   `              /mm`      -oss+//+oss:`       :mm.   so           
                echo            os   -mm-           `...`          .md-                                                  -mm.          `...`           -mm-   so           
                echo            os   -mm-           `...`          -dd-                              `                   -mm.                          -mm-   so           
                echo            os   .mm:       `:sso+//+sso-     ``md/ `  ` `       ` `  `     `    `    ` `     `   `  /mm`                          :mm.   so           
                echo            /h   `mm/      /h/`        .oy-    `yms `    `      `` `  `  `  `         ` `     `   `  sdy                           /mm`   h/           
                echo            -m`   hms     oy`  shhhhmm:  -h:    :mm.                                                .mm:                           smh   `m-           
                echo             m-   +md    :d`      `/ms    -d`    ymh                                                hmy                            dm+   -m            
                echo             so   .mm:   os       /ms      m-    .dms                                              smd.                           :mm.   os            
                echo             :d`   ymy   /d`     /my`     .m`     -dms`                                          `smd-                            ymy   `d:            
                echo              h/   :mm-  `yo    /my`     .h/       .hmy.                                        .ymh.                            -mm:   /h             
                echo              :d`   ymh   `oy:``/+`    `/y/         `omd+`                                    `+dmo`                             hmy   `d:             
                echo               y+   .dm+    .+so/:::/+os/`            -ymh/`                                `/hmy-                              +md.   +y              
                echo               .d-   /mm-     ``-:::-.`  `-:/++/:.`    `:ymdo-`                           -odmy:`    -/:`                      -mm/   -d.              
                echo                /h`   omd.             -os/:...-:+so.    `-ohmho:.                    .:ohmho-`     .m-so                     .dmo   `h/               
                echo                 os   `smh.          .so.  -+oo+- `-yo`     `-oyddhs+/--.``````.--/+shddyo-`        -m .h/                   .hms`   so                
                echo                 `yo   `smh.        `h+   /ms--hd-  `so        `.-+syhddddddddddddhys+-.`           .m` .y+                 .hms`   oy`                
                echo                  `yo   `smd-       /h    :dh//dy`   .m.             `...--::--...`                  h/  `os-              -dms`   oy`                 
                echo                  `so`  `+md/      +y    :hhosdy-    m-       ```                    ```            :d`   -os:`          /dm+`  `os`                  
                echo                    `os`   :dms`    -d.   dm:  oms   :d`   .:+oooooo+:.          .:+oooooo+:.         ss     .+oo/-.``  `smd:   `so`                   
                echo                      +y-   .ymh:    /y-  :yyssys.  :h-  .os/.``````./so.      .os/.``````./so.       `yo`      .-/+ooyhdmy.   -y/                     
                echo                       -y+`  `/dms.   -so-```..``.:so.  :h:` `+yssy+` `/h-    -h/`  /yssy+` `:h:       `ss.         .ommd/`  `+y-                      
                echo                        `os-   .oddo.   -+oo++++oo/.   `d:   om+``+ms   :d`  `d:   /ms``omo   :d`        /y/`     `+dmdo.   -so`                       
                echo                          :y+`   -smdo.    ``..``      /h    smo..+md    d:  :d    hm-  -md    h/         .os:` .+hmms-   `+y:                         
                echo                           `/y/`   -sdds-`             :d`   `/ssoymo   `d-  -d`   ym:  -mh   `d:           .+ssdmds-   `/y/`                          
                echo                             .+s:`   -odmy/.           `h+    ..:sds`   oy    yo   :dh--yd:   +y`           ./hmdo-   `:s+.                            
                echo                               .+s/`   `/ydds:.         .so.  oso/-   .os`    `so.  .+ss+-  .os.         .:sddy/`   `/s+.                              
                echo                                 `/s+.    .+yddy/.`       :so/-....-/os:        :so/-....-/os:       `./sddh+.   `.+s/`                                
                echo                                   `:os/`    ./yddhs/.`     .:/++++/:.            .:/++++/:.     `./ohddy/-    `/ss:`                                  
                echo                                      ./so:`    `:+yddhy+:.``                              ``.:+yhddy+:`    `:os/.                                     
                echo                                        ./oo/.`    `-/ohdddhyo+:-.`````       `````..-:+oyhdddho/-`    `./os/.                                        
                echo                                            `:oso/.`     `.:/oshdddddhhyyyyyyyyyyhhdddddhso/:.`     `.:oso:`                                           
                echo                                                .:+oo+:.``       `.-::///++++++///:--.`       ``.:+oo+:.                                               
                echo                                                    `.:+ooo+:-.```                    ```.-:+ooo+:.`                                                   
                echo                                                          `.:/+oooooo++////::////++oooooo+/:.`                                                         
                echo                                                                    `...--------..``                                                                                                   
                echo.
                echo.
                echo.
                echo.
                echo.
                set /p answer=Dial your number  
                if %answer%==999 goto AMBULANCE_DIAL_TUT
                IF %answer%==911 goto AMBULANCE_DIAL_TUT
                goto PHONE_DIAL_TUT

                    :AMBULANCE_DIAL_TUT
                    cls 
                    echo "911, what emergency service do you require ?"
                    ping localhost -n 3 >nul 
                    cls 
                    
                    echo "Hello, there's a man bleeding on 4th avenue."
                    ping localhost -n 3 >nul 
                    cls 
                     
                    echo "Ambulance will arrive as soon as possible."
                    pause 
                    goto CONT_TUT_1

    :CONT_TUT_1
    cls 
    echo The ambulance will take the man to the hospital. 
    echo We're gonna ask him a couple of questions tommorow. 
    ping localhost -n 5 >nul 
    cls 

    set /p answer=Do you want to stay and look if you've missed anything ? (Y/N)
    if %answer%==Y goto ALLEYWAY_1
    if %answer%==N goto ONE_DAY_LATER_TUT
    goto CONT_TUT_1

:ONE_DAY_LATER_TUT 
cls 
echo . 
echo ::::::::::::::::::::::::::-----.--.-......-`````............                   `........`                  .-----------------------------------
echo :::::::::::::::::::::://::::::::------..-:--..---..........`                   `........`                  .-----------------------------------
echo :::::::::::::::::::::/ssso++///::::::::--:----...---------..``                 `........`                  .-----------------------------------
echo :::::::::::::::::::::+yysossyyss:::::/:::::::::::------.----.....````          `........                   .-----------------------------------
echo :::::::::::::::::::::+yyo::://++::::/ssso::::::::::::::-----..-:--......````   ``.......                   .-----------------------------------
echo :::::::::::::::::::::oyyso++///:::::+syss/::/ssoo::::::::::::::-----...-.--............`                   .-----------------------------------
echo :::::::::::::::::::::syyoosssss/::::+ysss+::ossss::::/soo++//::::::::::-----...---:----.```                .-----------------------------------
echo :::::::::::::::::::::sys/:::///:::::oysoyo:/sssso::::+ssooosss+:::://::::::::::---:--.-.--....````      `  .-----------------------------------
echo :::::::::::::::::::::yys+//:::::::::oyo/ss/osooso::::+ss:::::/::::/sssooo+/::::::::::::-----.-.--.....`````.-----------------------------------
echo sssoo+///::::::::::::oossssssoo/::::oyo:ossss/oso-::-+ssoo+++/::::/ss+/+oss+:::::////:::::::::-------:-....------------------------------------
echo yyyyyyyyyssooo++/::::::::://++o/::::oso:+sss+:oso::-:oss+++oss::::+ss/:::oys:::/ossssso/::::::::::::::----....-------.-------------------------
echo ssyyyyyyyyyyyyyyyssssoo+//::::::::::/+/::oso::os+:-:-oso:--:-:::::+sysssssso:::oys/::/ss+:::/soo+///:::::::::---.-...:-----::------------------
echo ---:://+osssyyyyyyyyyyyyyyysssoo++/:::::::::::/+/-:::osso++//:::::+ss//sso/::::sy+:::::+/:::/ys+ooss/::/++::::::::::::--...-----:::------------
echo :---.......--:://+oossyyyyyyysyssssssssoo++/::::::-:-://++osss+:::+ss:::syo::::sy+::+soo+:::/ys::::::::/yy+::+s/:::::::::::-----...-:----::----
echo ......-::-----..-....--::/++oossyyyyysyyyyssssssoo++//::::--::::::+oo:-::syo:::+ss/::/+ys:::/yyssso+:::/yys+:+y+:::+osso/::::::::::-:--.-..----
echo ````.::--.-----:::------......---::/++oosssyysssssssyyssssoo+//:::::::::::+o/:::+sso++oyy:::/ys://++:::/ysss/+y+::+ss++oyo::os+::://::::::-----
echo `.-:---....................-::------....---:://+oosssyyyysyyysyysssoo++//:::::::-:+ossoo+:::/ys/:::::::/yo/ssoy+::oy+:::++/::ss//os+:::::::::::
echo :--................``````--:--.------------........--::/++oosssssyyyyyyyyyssso++//::::::::::/ossssso/::/yo:/syy+::oy+::::::::/ssoyo::::::::::::
echo ................``` `.--:----..-.........```..-:-------......--:://++oossyyyyyyyyyyyssoo+///::::://+/::/so::+yy+::/ss:::+/::::/sso:::::::::::::
echo .............`````.----..............``````.------------------.---...----::/++ossyyyyyyyyyyyyssoo++//::::::::+o/:::+ss+oss:::::ss/:::::::::::::
echo ..........`````.----..............``````.-----------.....`````..-:---------....---::/++ossyyyyyyyyyyyyssoo++//:::::::++o+/:::::ss/:::::::::::::
echo ---------.``.---..............```````.---.............``````.---.........----...-----..----:://+oossyyyyyyyyyyyssooo+///:::::::++/:::::::::::::
echo ------------------------....``` `..--.............``````.----...........``````.--:---::---------.----::/++oosssyyyyyyyyyyssoo++//::::::::::::::
echo .........-------------------.`.-----..........```````.---...........```````.--------........``.-:--------------::/+oosssyyyyyyyyyssso++////::::
echo -----......................------------------.```..--............``````.----..........``````.......................---::////osyyyyyyyyyyysssoo+
echo -//::::::::-----.....................---------.------------...`````..--...........`````..---........``````````````.------://///::://+oossyyyyyy
echo :::-----------....-::---------...............-----------------`..------.......``````.-----......```````````````````.-:////::/:::---------:::/++
echo /::::::::::::.``.-:::----:::-::-------------.................---------------.```.---.......`````````````````.``.-::///:::::----........-::::---
echo /////////+//:::://:::::::-----.```.-::::::::::----.---....................----------------.````````````.....-:://:::-----....``````.--::---....
echo ////+++//:///////////::::////:---::::::-------..```.-:::::------.......................---..``````.....-::///::------....`````..------....`````
echo.
echo.
echo.
echo.
echo.
echo.
set Q1_AMB=1
set Q2_AMB=1
set Q3_AMB=0
set Q4_AMB=0
set Q5_AMB=0
set Q6_AMB=0
set CLUE_ASIAN_TUT=0
set CLUE_COOMBS_TUT=0
set THANKS_AMB=0
set JASON_CLUE=0
set JASON_STORY_CLUE=0
ping localhost -n 3 >nul 
goto NOTEBOOK_AMB

                        :NOTEBOOK_AMB
                        cls
                        echo.
                        echo.
                        echo                        ______________________________________________________
                        echo                        ^|                                                    ^|
                        echo                        ^|                     NOTEBOOK                       ^|
                        echo                        ^|                                                    ^|
if %Q1_AMB% GTR 0       echo                        ^| 1. Sir, could you tell me your name, please ?      ^|
                        echo                        ^|                                                    ^|
if %Q2_AMB% GTR 0       echo                        ^| 2. Do you know your car is stolen ?                ^|
                        echo                        ^|                                                    ^|
if %Q3_AMB% GTR 0       echo                        ^| 3. ^Where have you bought the car ?                 ^|
                        echo                        ^|                                                    ^|
if %Q4_AMB% GTR 0       echo                        ^| 4. Can you explain to me what happened in that     ^|
if %Q4_AMB% GTR 0       echo                        ^|    alleyway ?                                      ^|
                        echo                        ^|                                                    ^|
if %Q5_AMB% GTR 0       echo                        ^| 5. Do you know anyone who might have done this ?   ^|
                        echo                        ^|                                                    ^|
if %Q6_AMB% GTR 0       echo                        ^| Thanks.                                            ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                        C           ^|
                        echo                        ^|                                      CLUES -^>      ^|
                        echo                        ^|____________________________________________________^|
                        echo.
                        echo.
                        
                        set /p answer=
                        if %answer%==1 goto Q1_AMB
                        if %answer%==2 goto Q2_AMB
                        if %answer%==3 goto Q3_AMB
                        if %answer%==4 goto Q4_AMB
                        if %answer%==5 goto Q5_AMB
                        if %answer%==6 goto THANKS_AMB
                        if %answer%==C goto NOTEBOOK_CLUES_AMB
                        goto NOTEBOOK_AMB 

                            :Q1_AMB
                            cls 
                            echo My name is Jason Burch. I come from England. 
                            set Q1_AMB=0
                            set JASON_CLUE=1
                            pause 
                            goto NOTEBOOK_AMB

                            :Q2_AMB
                            cls 
                            echo What ? Stolen ? I just bought it yesterday. 
                            ping localhost -n 3 >nul 
                            set Q3_AMB=1
                            cls 
                            
                            echo I have the receipt and the pink slips. They're at my house.
                            set Q2_AMB=0
                            pause 
                            goto NOTEBOOK_AMB 

                            :Q3_AMB 
                            cls 
                            echo Coombs automotive, the car was around 1200 bucks !
                            set Q4_AMB=1 
                            set CLUE_COOMBS_TUT=1
                            set Q3_AMB=0
                            pause 
                            goto NOTEBOOK_AMB

                            :Q4_AMB 
                            cls 
                            echo Well I bought the car and about two hours later a man was following me. 
                            echo.
                            echo I went a bit faster and he started to shoot at me, so I crashed and ran out of the car.
                            ping localhost -n 8 >nul 
                            cls 
                            echo Then I went in the alleyway and the man stabbed me. Then he ran away. 
                            set JASON_STORY_CLUE=1
                            pause 
                            set Q4_AMB=0
                            goto NOTEBOOK_AMB

                            :Q5_AMB 
                            cls 
                            echo No, not at all. I have seen the man's face. 
                            ping localhost -n 5 >nul 
                            cls 

                            echo I coulnd't recognize it.
                            ping localhost -n 3 >nul 
                            cls 

                            echo It seemed very similiar...I couldn't really tell but I think it was an asian, about 5'7
                            pause 
                            set Q5_AMB=0
                            set CLUE_ASIAN_TUT=1
                            set THANKS_AMB=1
                            goto NOTEBOOK_AMB

                            :THANKS_AMB
                            cls 
                            echo Thank you Jason, that will be everything. 
                            pause 
                            goto NOTEBOOK_AMB

                                :NOTEBOOK_CLUES_AMB
                                cls 
                                echo                        ______________________________________________________
                                echo                        ^|                                                    ^|
                                echo                        ^|                       CLUES                        ^|
                                echo                        ^|                                                    ^|
if %TIRE_CLUE% GTR 0            echo                        ^|   The tires on the car are blown. Someone probably ^|
if %TIRE_CLUE% GTR 0            echo                        ^|   shot them.                                       ^|
                                echo                        ^|                                                    ^|
if %BOOT_CLUE% GTR 0            echo                        ^|   The only thing in the boot is a spare tire.      ^|
                                echo                        ^|                                                    ^|
if %CLUE_MAN_RUNNING_TUT% GTR 0 echo                        ^|   The eyewitness saw a man running out of the car  ^|
                                echo                        ^|                                                    ^|
if %CLUE_SUSPECT_TUT% GTR 0     echo                        ^|   The man was wearing a grey hoodie and blue jeans ^|
                                echo                        ^|                                                    ^|
if %CLUE_BAG_TUT% GTR 0         echo                        ^|   Some man took a heavy black bag out of the hood. ^|
if %CLUE_BAG_TUT% GTR 0         echo                        ^|   Probably money.                                  ^|
                                echo                        ^|                                                    ^|
if %CLUE_KNIFE_TUT% GTR 0       echo                        ^|   There was a knife covered in blood. Could just be^|  
if %CLUE_KNIFE_TUT% GTR 0       echo                        ^|   a kitchen knife from the restaurant, but         ^|
if %CLUE_KNIFE_TUT% GTR 0       echo                        ^|   according to the situation, it was most likely   ^|
if %CLUE_KNIFE_TUT% GTR 0       echo                        ^|   used to attempt a murder.                        ^|
                                echo                        ^|                                                    ^|
if %JASON_CLUE% GTR 0           echo                        ^|   We got the name of the victim-Jason Burch        ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|      B                                  N          ^|
                                echo                        ^|  ^<-BACK                               NEXT -^>      ^|
                                echo                        ^|____________________________________________________^|
                                echo.
                                echo.
                                set /p answer=
                                if %answer%==B goto NOTEBOOK_AMB_1 
                                if %answer%==N goto CLUES_NEXT_AMB
                                goto NOTEBOOK_CLUES_AMB

                                    :CLUES_NEXT_AMB
                                    cls 
                                    echo                        ______________________________________________________
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                       CLUES                        ^|
                                    echo                        ^|                                                    ^|
if %CLUE_COOMBS_TUT% GTR 0          echo                        ^|  The victim says that he bought the car  ^at Coombs  ^|
if %CLUE_COOMBS_TUT% GTR 0          echo                        ^|  automotive. We better check there.                ^|
                                    echo                        ^|                                                    ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  The victim says that someone was chasing him and  ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  then stabbed him. We could go check on the crime  ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  scene again and ask ^if they have any footage.    ^|
                                    echo                        ^|                                                    ^|
if %CLUE_ASIAN_TUT% GTR 0           echo                        ^|  The witness said the man who chased him was a     ^|
if %CLUE_ASIAN_TUT% GTR 0           echo                        ^|  5'7 asian with black hair.                        ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|  
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|      B                                             ^|
                                    echo                        ^|  ^<-BACK                                            ^|
                                    echo                        ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==B goto NOTEBOOK_CLUES_AMB
                                    goto CLUES_NEXT_AMB

                            :NOTEBOOK_AMB_1
                            cls 
                            echo.
                            echo.
                            echo                        ______________________________________________________
                            echo                        ^|                                                    ^|
                            echo                        ^|                     NOTEBOOK                       ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|              NO ^MORE QUESTIONS LEFT               ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|                                                    ^|
                            echo                        ^|       M                                C           ^|
                            echo                        ^|    ^<-MAP                             CLUES -^>      ^|
                            echo                        ^|____________________________________________________^|
                            echo.
                            echo.
                            set /p answer=
                            if %answer%==C goto NOTEBOOK_CLUES_AMB
                            if %answer%==M goto MAP_TUT 
                            goto NOTEBOOK_AMB_1
                            

                                :MAP_TUT
                                cls 
                                echo      _____________________
                                echo     ^|                   ^|
                                echo     ^|                   ^|
                                echo     ^|                   ^|________
                                echo     ^|      HOSPITAL     ^|        ^|_______________________ 
                                echo     ^|                   ^|        ^|_________________     ^|
                                echo     ^|                   ^|________^|                   ^|  ^|
                                echo     ^|                   ^|                            ^|  ^|    
                                echo     ^|                   ^|                            ^|  ^|     ___________________________________________________ 
                                echo     ^|___________________^|                            ^|  ^|    ^|                    2 CRIME SCENE                 ^|
                                echo                                                      ^|  ^|    ^|    ________________           ____________       ^| 
                                echo                                                      ^|  ^|    ^|   ^|     1         ^|          ^|           ^|       ^|
                                echo                                                      ^|  ^|    ^|   ^|    HOTEL      ^|          ^| RESTAURANT^|       ^|
                                echo                                                      ^|  ^|    ^|   ^|   (open)      ^|          ^|   (open)  ^|       ^|
                                echo                                                      ^|  ^|    ^|   ^|_______________^|          ^|_____3_____^|       ^|
                                echo                            __________________________^|  ^|_________________________________________________________________________
                                echo                            ^| _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _    ^|
                                echo                            ^|    ________________________________________________________________________________________________  ^|
                                echo                            ^|   ^|                                 ^|\   \           ^|     ^|           /   /^|                     ^|  ^|
                                echo                            ^|   ^|                                 ^| \   \          ^|     ^|          /   / ^|                     ^|  ^|
                                echo                            ^|   ^|                                 ^|  \   \         ^| PARK^|         /   /  ^|                     ^|  ^|
                                echo                            ^|   ^|                                 ^|   \   \        ^|  6  ^|        /   /   ^|                     ^|  ^|
                                echo                            ^|   ^|  __________                     ^|    \   \       ^|     ^|       /   /    ^|                     ^|  ^|
                                echo                            ^|   ^| ^|    4    ^|                     ^|     \   \      ^|     ^|      /   /     ^|                     ^|  ^|
                                echo                            ^|   ^| ^|  COOMBS ^|                     ^|      \   \     ^|     ^|     /   /      ^|                     ^|  ^|
                                echo                            ^|   ^| ^|  AUTO   ^|                     ^|_______\___\____^|_____^|____/___/_______^|                     ^|  ^|
                                echo                            ^|___^| ^|_________^|                                                                                   ^|  ^|
                                echo                                                                                                                                ^|  ^|
                                echo                                                                                                                                ^|  ^|
                                echo                                                                                                                                ^|5 ^|
                                echo                                                                                                                                ^|  ^|
                                echo.                                                                                                                                    
                                echo.
                                echo.
                                echo.
                                echo.
                                echo.
                                set /p answer=
                                if %answer%==1 goto HOTEL_TUT
                                if %answer%==2 goto CRIME_SCENE_TUT
                                if %answer%==3 goto RESTAURANT_TUT 
                                if %answer%==4 goto COOMBS_TUT 
                                if %answer%==5 goto MAP#2_TUT 
                                if %answer%==6 goto PARK_TUT 
                                goto MAP_TUT

                                :MAP#2_TUT 
                                cls 
                                echo ^|^^ ^|
                                echo ^|^| ^|
                                echo ^|B ^|
                                echo ^|  ^|                           ______________________________   
                                echo ^|  ^|                          ^|                            ^|
                                echo ^|  ^|                          ^|           POLICE           ^|
                                echo ^|  ^|                          ^|           STATION          ^|
                                echo ^|  ^|                          ^|              1             ^|
                                echo ^|  ^|                          ^|____________________________^|
                                echo ^|  ^|____________________________________________________________________________________
                                echo ^|  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _
                                echo ^|________________________________________________________________________________________
                                echo.
                                echo.
                                echo.
                                echo.
                                set /p answer=
                                if %answer%==B goto MAP_TUT 
                                goto MAP#2_TUT

    :HOTEL_TUT 
    cls 
    echo H
    ping localhost -n 1 >nul 
    cls 

    echo H O 
    ping localhost -n 1 >nul 
    cls 

    echo H O T 
    ping localhost -n 1 >nul 
    cls 

    echo H O T E 
    ping localhost -n 1 >nul 
    cls 

    echo H O T E L 
    ping localhost -n 3 >nul 
    cls 

    echo ````````````````````````````````````````````````````````````````````````-/+o++////////////+/++syhd+//////////:::::-/sshyssss/`````````````````````````
    echo `````````````````````````````````````  `````````````````````````````.:/oo++::://////////++++oddhdh++/////////::::::+sshyyssss-``````-.````````````````
    echo ``````````````````````````` ```````     `````````````````````````-:/o++/::::::////////+o///+odhyhdo++////////////::+sshyyhsssy:--::.:-````````````````
    echo ````````````````````````      `````  ` ``````````````````````.:/ooo+//::::::::::///syhms///+odmdmmo+/////////////::+yshyydyyyyy//osos:````````````````
    echo `````````````````````````      ```  ``````````````````````-:+soo+/////:://:::::::/+ddhds///+ommhdyo///////////////:+yyyyhdyyydddhdhso-````````````````
    echo ``````````````` ```   ``        ``````````````````````.-/+ooo++//////////::+sho/::/hdhmy///+oyyso++///////////////:+yysyhdhdhmmdddhy-`````````````````
    echo ``````````````````` `   ` `  ``````````:.``````````.:/ooo+///+////////:::/ddddo:::/mmdmy///////++++++//////////://:+yyssydymhmddhhho``````````````````
    echo ````````````````````````````` `````````::-.`````-:/o++//////++/////oss/::/ddddo:://hyso+//////++++++///+/////////::+yyysshdmddddddo-``````````````````
    echo ```````````````````````````````````````--::`.-:+oo+///////////+++odhdy////mmmmo:::///+/++++/++osyh+///////////:::::+yyhysymmmmmmdh:```````````````````
    echo ```````````````````````````````````````-`-:/+++///////////++sy+++odhdy////dhys/::/://++++///+hhyhh+//////////::::::+syhyyhmmmmmdhy/`-.````````````````
    echo ``````````````````````````````````````-/++++//:::/:///////yddd+//+mdmh////++/:::////+oss////+hhyhh++/////////::::::+sshyydmmmmmddho+s/````````````````
    echo ``````````````````````````````````.-/+o+////:://////osy///yddd+/+odyys////::///////hdhdy////+hdhdd+/////:/://::::::+sshyymddmmmdmdhys:````````````````
    echo ```````````````````````````````.-/+++//:://////////oddy///ymdd++++oo+++++//+os+///+ddyds//:/+mmhdh+////::::::::::::/sssssdhddmmdddhy/`````````````````
    echo ```````````````````````````.-:+++/::::://////oydo//oddh///shso+++/++++++/+hdhd+///+ddhmy////+sso///////::::::::::::/ssoosdhdhmddddhy.`````````````````
    echo ````````````````````````.-/+++/::::::::/+s///hhd+//omdh////++/+++++oss++/+ddyd+///+mmhds///////+//////////:::::::::/ooooshhddmdhhhyo``````````````..-:
    echo `````````````````````-:+++//:::::://///hdm///hdm+:/+so/////+/++++odhdy+/++dddmo///+soo+////////////::///////:::::--/oosoosdddmmmmd+.`.``````````:///::
    echo `````````````````.-/++/:::::::://osh///dhd/:/hhy+/////////+yhd+//+dhdy//++dmhho////+++////////+oyy+///::/::::::::--/ooysosmmNNmmdh:`-:..````````-/::::
    echo `````````````.-:+++//:::::::/+o//yhh/::ddd/://///////oo+//sddd/+/+mdmh//++soo+//////++///:::+ddhmdo:::::::::::::---:ooyssymNNNmdmdsoss--:``````.:/++oo
    echo ``````````.-/+o++////:::/+::hhy/:ydm/:/o+/::///////oddd+//sddm+++odyyo+/+++++++////osshy/:::+ddhddo/::::::::::-----:ooyssddmmNmmmmddhs--/:--:``:syyyys
    echo ``````.-/+oo+/////////:+hh::hhy::syo::::/:://oyho//oddd///smdd+++++o++++++++oo+///+hmhmy/::/+dmhmms::::::::::::----:ooysodhddmmddmddh:--/oy+o``-oo+///
    echo ```.-/ooo+/////////sho:ohh::hyo:::/::::+os/::yhdo//ommd//+ooo+++++++++++++ydhdo///+hdhdy////+mmhmho:::---:-::------:+oosodyddmmdmmddo:.-/+hs+-.-os:---
    echo .:oooo++++///+/ohs/sdo:ody:://::::/+:::hdd/::ydmo//+yso+////++++++osyy///+dmhdo///+dmdmh////+ssso+/:::-------------:++ooodyddmmdmmdd::.-+/hhhyoo/+:///
    echo /so+++++++++hh/sds/sho//+/::::/::shd/::hdm/:/hhy+///+++////+os+++oddmh++/+dmdmo///+ddyhs///////+///:::::--::::-----:+o++oyhddmdddddy./.-++yssy//::::::
    echo o++++oo+yh++dh/sdo//+/:://::shy::ydd:::hdh/://+///////+///sddd///+ddmd+//+dmdmo////+oo+++//////////::::::::::-------+oo+osddmmmNmms:-s--+os++o+/:::///
    echo s++++hh+yd++dy//+//://:+yh::ydh::hdd:::++/:::://///+hhh///sddd///+mmmd+//+yyso+//////+++++///+oosy+:::::::::::------+ooyoodmNNNmmms+oy--/+so++++//////
    echo h++++dh+yh+/+//////ohy:+dd::ydy::oo/:::/+////oyh+//oddd///smdm//++hhys/////+++//////++oo++///ddhmdo::::::::::-------oooyoyhmmNmdmmdhhh-.//syssss+/////
    echo h++++ys++//+oo/shy:sdh:+md::o+/::///://syh///hdm+//omdd///sdhy+/+++ooo+//++++++////hdhmh/////ddhddo/::::-:::--------oosyoddmmmmdddhsh+.-//sddmdd+/////
    echo y+++++++os++dd/sdy:smy:/o+:://:/:+sy///ddd:::hdmo//odhy///++o+++++++++++++yhhdo////dmhmy/////dmdmmo:::::-/+/------.-oosyshhmdmmhhmhsh:.-/+sdddhy////++
    echo y++++yh+ydo+md/sho:+o/://///oss/:ydm/::hdm::/hdh+///+o+////++o++++ssyh+/++mmdms////dmdmh/////dmhddo:::::.:///:----.-+oshshhmdmmddmhhs:--/oydsoo////+++
    echo d++++hd+ymo+yo/+//:/+//+yy//hdy/:ydm/::hhh/:/++//////++///+syho++ommmd+//+dmdms////dmdmh///:/sss++//::::.:+/o::---.-+osyshhmdmhdddhh//--/+shoo+/+///++
    echo d++++hh+so//+///++/sho:+hh:/hdy::sdh/://+///:///////osy///smmm++++mddd+/++mNmms////sysso///:://+/:::::::./yss/:--..-+oosshddddhddddy-o:.::ohyhys++/+++
    echo y++++o++++/+ss/shs/sdo/odd//yyo::/+//::://://osy+//omdd///sddm+++ommmd++++yhyyo+///++o++/////://::/:::::-:oos+::-..-+osssydmmmmmmmy//s:.:/odddhyo+++++
    echo ho+++ss+sh++dh/sdo:sds/+so://///::/+:::syh/:/hhmo//oddd///smdm++++hhys+++++oo++////++++++/////+oooo:::::.:::so::--.-+oshyhdmmmmdmmdhhh/.:/sdhssyo/++++
    echo dooo+hy+yd++dh/oho:/+////////++::shd/::ddd/:/hhmo//omdm///oyss+++++oo+++//++++++/+++ooss+////hmmdms:::::.:::so/:----+oshydmmmNmdhdh+ss..-/shoo+so/++++
    echo doooodh+yh++s+///:://///ss//ydy::ydd/::dmm/:/hhdo//osoo/////++++++++++++++oosyo+///hmdNd/////hmmhds/::::.:+/yo+::---+oshyddmmmmhhdy/s+..-/ohsysso/++++
    echo hooooys+++/////+o+:sho:odh/:ydy::sdm::/yhy/:/+++///+/+////++++++++syhh+///dmmNy+///hmdmd/////hmmdms:::::./ysys+::---+osyyddmmmmhhdy+s:-.-:ohdddds++///
    echo hoooooo+oo/+hs/sdo:sds/+dd/:hdy::oso:://+/::////////+oo+/+shhd++++mmdm////hmmmy+///hNdNm+////hmmhms:::::.:+oyso/::-:ooshyddddmdhddhso-..-:ohhhyso+++++
    echo doooohh+yd++dy/sds:sds/+ys//++/::::::::://::/osyo//oddm///smdm+//+dmdm////hNmNy////hmddh++///sssso+::///.://yss+/:-:osyhydddddddddys//:.-:oyoo++o+++++
    echo h++oohh+yd++dy/oy+:+o///////////:/+o/::yhh/::hhmo//+ddd///ommm+/++mNdm+///ydhho////ooo++///////o+///////-/hyysso/:::syhhhhddddddhhyo:+/.-:oysso:+//+++
    echo hoo+ohh+ss++o+//+///+///oo//yhy::ydm/::hdd/::ydms//+mmm///omhd+//+yyys+///++o++/////+++//////++++++/////-/hhsoo+/:::syhhhhddmmmmmmhyyy+.-:+hyhhoo+++++
    echo syh+++++++/+o+/oso/shs/odd/:ydy/:ydm/::dmm/:/hdmo//+yhs///++o++/+++++++///+++////++++++++++++osssyo/////--//so++/:::syhdhhdmmmmmmdh++s-.-:+ddddyo+++oo
    echo yyy//ss+yh/+dy/ohs/sds/odd//hdh/:sdd/:/sss+/+oooo///+y+////++++++++++++/++ooos+//++ydhdd++++/hmmdmy+////-:++soo++:::syydhddmmmmdddh/+o-.-/ohysyo++oooo
    echo yyh//hy/yh/+dy:ods/sds/+dy//oss++sys/+sysdohhhshho++oso++++ssyo+++hdhd++++dmdmy++++hmddm+++//hddhdy+////-+mdysoo+/::syyhhddmmmmdmmdyhs/-:+ohhsyss+oooo
    echo yhy//hh/sh//so:/o+//o///y+//shddyhddysyhddyyyhddy++oddm+++smdms+++dmdm++++hdddy++++hmdmm++///hNNmNh+////-/yyyyso+/::osyhhddmmmmdmmdyd+o+:+ohhydyy++ooo
    echo hhy//o+////:/://////++/+ys/+hdhsoyhms++ddmo++hdmy++omdm+++smdms+/+dmdm+///hNdNy++//hNmmm++///hmmdmh+////-://yyso+/-:+syhhddmmmmmmddddyy+:+oddddhy+++++
    echo hdh+++o/os/+ys/oys/shy/odd//hdh++yhdo+/hhm+//hdmy++ommN+++smmNs+++dmdm+///ydhdy////yhhhho+++/osssoo/////-/yyhyso+/::osydhdmmmdmmmdddddds/+sdhyhos+++++
    echo hhy/+dd/yd++dh/sdy/sdy/odd//hdh//ydm+//ddm+//yhds//+hyy+//oyyyo///osoo+///oosoo/+//++soo++++/++o+++/////-+hhhyso++//oyyhhdmmmmmmNNNNmmdyooydhyyso+++++
    echo ddy/+dd/yd++dh/sds/sdy/ohy//sys:/oso///oo+////+//////+/////++++///++++////+++++///+++++++++///++++//////-/oohhsoo+//syyhdmmmNNNNNNNmdmyoooyhdyhys+////
    echo hhy++so/+o//++//+//+++/////:///:://://///:////////////////////++/////++//++++++++++++o+oo++///+++++/////:ooohhssso//syhhdmmNNNNNNNNmdmysssydddmh+-----
    echo hhy++++//+////+////++++////:/:/://:://///:///://////////////++++/+/+/++///+++o++++oooo+o+++++++oooo+++++ohdmdhysso//shddmmNNNNNmmNNmmdysssydmdmh/-.---
    echo hys++++++ssso++/ossso+//+ssyy+/://+yyhhhy://///hhddddy//::/:ydmmmmmdo++///+:dmNNNNNNMNoo++++++osssoo+++++oymhyyso+//shhddmNNNNNNmNNmmdhyyyhmmdmy/-----
    echo h++++ys++dmNmo+/ydNNy++/+hmNNs/:::odmNNmh/yyo+/ymNNNNd::::/:shmNNNmms++oo+/:ymNNNNNNNNoso++++smNNNy+++/+++oyyysso+//shhddmNNNNNNmNNNNmdyyhhmmdmdy+++++
    echo mhooohyoymmmNy+/symNy++++yhhyo/o/:oyhhhhhdmmdmhohmmddh//://:symmmmmmyydmdd+/shNNNNNNNNoso++++omNNNy++++++++ssssooo//shhmmmNNmNNNNNNNNmNdddmmNNmmo-----
    echo Nds////smNNNmh/-symmsoo+yo+o/+o+ooooosoohmmNNmhyhdNNNd::::::ssmdmmmmmddmdddoyhmNNNNNNNos+++++oddddso+++/+osoooooo+//shdmmmNNNNNNNNNmNNNmdddNNNmmo.....
    echo Nhs:::/smNNNmdo:symdoso/s+/o+yhddhhhddhmmNddmmmdhdmmNd------ssddddmmmmdmmmdsyhNNNNNNNm+::----//////:::::/ymy+////:--:yydhhmNNNNNNNNNNNNmdddNNNmms-....
    echo h//::::/omNNh+/:symmo/o/oyyddy+shmdNNNNMMmdddsoysydNNd------ssddddddmmmmmddohhNNNNNNNm+::-------:------:+ydyo:::---.-sydhhmNNNNNNNNNNNNmdddNNNmms-.-..
    echo y++o+/:::dmms/::symmo+o:+yyods-/shhddmNNMdyoh/:osyhmmd------ssdddmmmdddhyyyohhNNNNNNNN+:::::---::::::oohmddys/::---.-yydhhNNNNNNNmmmNmmmdddNNNmmy-....
    echo hddhhhyyshdyo+o+symdhmo:+hyhms-/syhdmNNNMmyyy//syyhdmd------syyhhhdds/y/::::hhmNmmmmmm+::::::-:::-:oyyhhmddhyhhs+--.-yyddhNNNNNNmdhddddddmmmmmmmy-..-.
    echo mNMMNdddyyh:-----..-/Ns//:oy//++shdddmmNmdhddyymhhhhdh:-----sy//++++//y:::::yhyoooooss/:::::::::::::/+yddddmmds/:----hhddhNNNNNNmddddmmmmmmmmmmmh-....
    echo NNMMMNhddmhsy+////:::os---::/++osossymddydmddhyhhyssyh+oo++/syyyss+ssoy:::/:ydo+////++:/::::::::::::::::/hydddds:---:hhddhNNNMNNNddddddddmmmmmmmh----.
    echo dddmNmNmmNNNho+++/////:///:::::::---odmhhNMMMNNNNmdyoymdy+ossyyyssss++///+osdmmmdddhyhyo+/:::::::::::::::yo//+oo/----yhddhNNNNNdhyyyhhhdddddmmmd/----.
    echo sssossssssooo+++++++++++///////::::-::+oyyhhdmmmNmsdomdhyyhhhhhhhhhyyysooydhNNNNmmNNmNNddhyhyyysssooo++++yo/:::::::-:yhdmmmdhyssssssyyyhhddddmmd-.....
    echo oooooooooooooooooo+o++++//+////////////////:::://++ossoossysymmmmmmdmhydhmNNMNmNMMMMMMNMNmhydhhs/++++oosshhyyyysssooohddhysssssssssssyyyhhhddddd-.....
    echo ooo++++++++++++++++++++++++++++++++++++++++++++++++++//////////++ossysshdmmNNmdNmNNNmmmNNNNNmNmN+:::::::/os::---:::::///////++++oosssyyyhhhhdddd:-....
    echo oooo+++++++///////////////++++++++++++oooooooo+++ooooooooooooooooooo+++++///+oosyyhhdddmmNdmNNNmyooo+++osyho/:::::::::::--------------:::///++oo/-----
    echo +++++++++//////:::::::::::::::::///////+++++++ooooooooooooooooooooooo++++oo+ooooooooooo++oosyss+/::://++++o+++/+//::-.......-.-..---------.......-...`

    echo.
    echo.
    ping localhost -n 4 >nul
    cls 
    echo "Hello, sir we'd like to ask you some questions."
    ping localhost -n 3 >nul 
    set CLUE_BUICK_TUT=0
    set Q1_HOTEL_TUT=1 
    set Q2_HOTEL_TUT=0
    goto NOTEBOOK_HOTEL_TUT

                                    :NOTEBOOK_HOTEL_TUT
                                    cls
                                    echo  ______________________________________________________
                                    echo ^|                                                    ^|
                                    echo ^|                     NOTEBOOK                       ^|
                                    echo ^|                                                    ^|
if %Q1_HOTEL_TUT% GTR 0             echo ^| 1. Have you seen anything strange yesterday night ?^|
                                    echo ^|                                                    ^|
if %Q2_HOTEL_TUT% GTR 0             echo ^| 2. Do you know a man named Jason Burch ?           ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|       M                                      C     ^|
                                    echo ^|   ^<-MAP                                   CLUES -^> ^|
                                    echo ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==1 goto Q1_HOTEL_TUT
                                    if %answer%==2 goto Q2_HOTEL_TUT 
                                    if %answer%==3 goto Q3_HOTEL_TUT 
                                    if %answer%==C goto CLUES_HOTEL_TUT 
                                    if %answer%==M goto MAP_TUT
                                    goto 

                                    :Q1_HOTEL_TUT
                                    cls 
                                    echo "Yes, I only heard a man scream and that happens quite a lot because of damn kids playing football, but that scream was particularly strange. I didn't go check it tho."
                                    pause 
                                    set Q1_HOTEL_TUT=0
                                    set Q2_HOTEL_TUT=1
                                    goto NOTEBOOK_HOTEL_TUT

                                    :Q2_HOTEL_TUT 
                                    cls 
                                    echo "That name sounds familiar...let me check."
                                    ping localhost -n 3 >nul 
                                    cls 
                                    
                                    echo "Yes, he stayed here about a month ago. Said that he just bought a new Buick."
                                    set CLUE_BUICK_TUT=1 
                                    set Q2_HOTEL_TUT=0
                                    pause 
                                    goto NOTEBOOK_HOTEL_TUT

                                    :CLUES_HOTEL_TUT
                                    cls 
                                    echo                        ______________________________________________________
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                       CLUES                        ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The tires on the car are blown. Someone probably ^|
                                    echo                        ^|   shot them.                                       ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The only thing in the boot is a spare tire.      ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The eyewitness saw a man running out of the car  ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The man was wearing a grey hoodie and blue jeans ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   Some man took a heavy black bag out of the hood. ^|
                                    echo                        ^|   Probably money.                                  ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   There was a knife covered in blood. Could just be^| 
                                    echo                        ^|   a kitchen knife from the restaurant, but         ^|
                                    echo                        ^|   according to the situation, it was most likely   ^|
                                    echo                        ^|   used to attempt a murder.                        ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   We got the name of the victim-Jason Burch        ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|      B                                  N          ^|
                                    echo                        ^|  ^<-BACK                               NEXT -^>      ^
                                    echo                        ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==B goto NOTEBOOK_HOTEL_TUT_1
                                    if %answer%==N goto CLUES_HOTEL_TUT_2
                                    goto CLUES_HOTEL_TUT

                                    :CLUES_HOTEL_TUT_2
                                    cls 
                                    echo                        ______________________________________________________
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                       CLUES                        ^|
                                    echo                        ^|                                                    ^|
if %CLUE_COOMBS_TUT% GTR 0          echo                        ^|  The victim says that he bought the car ^at Coombs ^|
if %CLUE_COOMBS_TUT% GTR 0          echo                        ^|  automotive. We better check there.                ^|
                                    echo                        ^|                                                    ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  The victim says that someone was chasing him and  ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  then stabbed him. We could go check on the crime  ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  scene again and ask ^if they have any footage.    ^|
                                    echo                        ^|                                                    ^|
if %CLUE_ASIAN_TUT% GTR 0           echo                        ^|  The witness said the man who chased him was a     ^|
if %CLUE_ASIAN_TUT% GTR 0           echo                        ^|  5'7 asian with black hair.                        ^|
                                    echo                        ^|                                                    ^|
if %CLUE_BUICK_TUT% GTR 0           echo                        ^|  The hotel staff say that Jason bought a new car   ^|
if %CLUE_BUICK_TUT% GTR 0           echo                        ^|  a month ago. Means that he probably has money.    ^|
                                    echo                        ^|                                                    ^| 
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|      B                                             ^|
                                    echo                        ^|  ^<-BACK                                            ^|
                                    echo                        ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==B goto CLUES_HOTEL_TUT
                                    goto CLUES_HOTEL_TUT_2

                        :NOTEBOOK_HOTEL_TUT_1
                        cls 
                        echo.
                        echo.
                        echo                        ______________________________________________________
                        echo                        ^|                                                    ^|
                        echo                        ^|                     NOTEBOOK                       ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|              NO ^MORE QUESTIONS LEFT               ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|                                                    ^|
                        echo                        ^|       M                                C           ^|
                        echo                        ^|    ^<-MAP                             CLUES -^>      ^|
                        echo                        ^|____________________________________________________^|
                        echo.
                        echo.
                        set /p answer=
                        if %answer%==C goto CLUES_HOTEL_TUT
                        if %answer%==M goto MAP_TUT
                        goto NOTEBOOK_HOTEL_TUT_1

        :CRIME_SCENE_TUT
        cls 
        set MAP_TUT_CRIME=0
        echo A couple of reporters and policemen are here. 
        ping localhost -n 3 >nul 
        cls 

        echo Nothing new here. 
        ping localhost -n 2 >nul 
        goto MAP_TUT

        :RESTAURANT_TUT 
        cls 
        echo Let's go ask some questions in the restaurant.
        ping localhost -n 3 >nul 
        cls 
        echo "Hello sir."
        set Q1_RES_TUT=1
        set Q2_RES_TUT=1
        ping localhost -n 2 >nul 
        goto NOTEBOOK_RESTAURANT

                                    :NOTEBOOK_RESTAURANT
                                    cls
                                    echo  ______________________________________________________
                                    echo ^|                                                    ^|
                                    echo ^|                     NOTEBOOK                       ^|
                                    echo ^|                                                    ^|
if %Q1_RES_TUT% GTR 0               echo ^| 1. Have you seen anything strange yesterday night ?^|
                                    echo ^|                                                    ^|
if %Q2_RES_TUT% GTR 0               echo ^| 2. Do you know a man named Jason Burch ?           ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|       M                                       C    ^|
                                    echo ^|   ^<-MAP                                   CLUES -^> ^|
                                    echo ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==1 goto Q1_RES_TUT 
                                    if %answer%==2 goto Q2_RES_TUT
                                    if %answer%==C goto CLUES_RES_TUT 
                                    if %answer%==M goto MAP_TUT
                                    goto NOTEBOOK_RESTAURANT

                                    :CLUES_RES_TUT 
                                    cls 
                                    echo                        ______________________________________________________
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                       CLUES                        ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The tires on the car are blown. Someone probably ^|
                                    echo                        ^|   shot them.                                       ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The only thing in the boot is a spare tire.      ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The eyewitness saw a man running out of the car  ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The man was wearing a grey hoodie and blue jeans ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   Some man took a heavy black bag out of the hood. ^|
                                    echo                        ^|   Probably money.                                  ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   There was a knife covered in blood. Could just be^| 
                                    echo                        ^|   a kitchen knife from the restaurant, but         ^|
                                    echo                        ^|   according to the situation, it was most likely   ^|
                                    echo                        ^|   used to attempt a murder.                        ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   We got the name of the victim-Jason Burch        ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|      B                                  N          ^|
                                    echo                        ^|  ^<-BACK                               NEXT -^>      ^
                                    echo                        ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==B goto NOTEBOOK_RESTAURANT
                                    if %answer%==N goto CLUES_RES_TUT_2
                                    goto CLUES_RES_TUT

                                    :CLUES_RES_TUT_2
                                    cls 
                                    echo                        ______________________________________________________
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                       CLUES                        ^|
                                    echo                        ^|                                                    ^|
if %CLUE_COOMBS_TUT% GTR 0          echo                        ^|  The victim says that he bought the car ^at Coombs ^|
if %CLUE_COOMBS_TUT% GTR 0          echo                        ^|  automotive. We better check there.                ^|
                                    echo                        ^|                                                    ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  The victim says that someone was chasing him and  ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  then stabbed him. We could go check on the crime  ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  scene again and ask ^if they have any footage.    ^|
                                    echo                        ^|                                                    ^|
if %CLUE_ASIAN_TUT% GTR 0           echo                        ^|  The witness said the man who chased him was a     ^|
if %CLUE_ASIAN_TUT% GTR 0           echo                        ^|  5'7 asian with black hair.                        ^|
                                    echo                        ^|                                                    ^|
if %CLUE_BUICK_TUT% GTR 0           echo                        ^|  The hotel staff say that Jason bought a new car   ^|
if %CLUE_BUICK_TUT% GTR 0           echo                        ^|  a month ago. Means that he probably has money.    ^|
                                    echo                        ^|                                                    ^| 
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|      B                                             ^|
                                    echo                        ^|  ^<-BACK                                            ^|
                                    echo                        ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==B goto CLUES_HOTEL_TUT
                                    goto CLUES_RES_TUT_2

                                    :Q1_RES_TUT 
                                    cls 
                                    echo "No, we close at 9 PM"
                                    ping localhost -n 2 >nul 
                                    goto NOTEBOOK_RESTAURANT

                                    :Q2_RES_TUT
                                    cls 
                                    echo "No, sorry, that name doesn't sound familiar."
                                    ping localhost -n 3 >nul 
                                    goto NOTEBOOK_RESTAURANT

        :PARK_TUT 
        cls 
        echo No. 
        ping localhost -n 2 >nul 
        cls 
        
        echo No. Not the park. 
        ping localhost -n 2 >nul 
        cls 

        echo No. 
        ping localhost -n 2 >nul 
        goto MAP_TUT 

        :COOMBS_TUT
        cls 
        echo This is the place that the car was sold. 
        ping localhost -n 2 >nul 
        cls 

        echo Maybe we can get some information here. 
        ping localhost -n 2 >nul 
        cls 

        echo "Hello sir, we're the LAPD. We'd like to ask you some questions."
        echo.
        echo.
        pause 
        set Q1_COOMBS_TUT=1
        set Q2_COOMBS_TUT=0
        set Q3_COOMBS_TUT=0
        set Q4_COOMBS_TUT=0
        set Q5_COOMBS_TUT=0
        set CLUE_MARQUES_TUT=0
        goto NOTEBOOK_COOMBS

                                    :NOTEBOOK_COOMBS
                                    cls
                                    echo  ______________________________________________________
                                    echo ^|                                                    ^|
                                    echo ^|                     NOTEBOOK                       ^|
                                    echo ^|                                                    ^|
if %Q1_COOMBS_TUT% GTR 0            echo ^| 1. Jason Burch said he bought a car here. Do you   ^|
if %Q1_COOMBS_TUT% GTR 0            echo ^|    remember him ?                                  ^|
                                    echo ^|                                                    ^|
if %Q2_COOMBS_TUT% GTR 0            echo ^| 2. Do you know who sold this car to you ?          ^|
                                    echo ^|                                                    ^|
if %Q3_COOMBS_TUT% GTR 0            echo ^| 3. Have you checked the trunk of the car ?         ^|
                                    echo ^|                                                    ^|
if %Q4_COOMBS_TUT% GTR 0            echo ^| 4. Do you know the car you bought was stolen ?     ^|
                                    echo ^|                                                    ^|
if %Q5_COOMBS_TUT% GTR 0            echo ^| 5. Who prints these pink slips ?                   ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|       M                                      C     ^|
                                    echo ^|   ^<-MAP                                   CLUES -^> ^|
                                    echo ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==1 goto Q1_COOMBS_TUT 
                                    if %answer%==2 goto Q2_COOMBS_TUT 
                                    if %answer%==3 goto Q3_COOMBS_TUT
                                    if %answer%==4 goto Q4_COOMBS_TUT 
                                    if %answer%==5 goto Q5_COOMBS_TUT
                                    if %answer%==C goto COOMBS_CLUES
                                    if %answer%==M goto MAP_TUT_2

                                    :Q1_COOMBS_TUT 
                                    cls 
                                    set Q1_COOMBS_TUT=0
                                    set Q2_COOMBS_TUT=1
                                    echo "Yes. He bought a used red Lincoln contintental if I remember rightly."
                                    pause 
                                    goto NOTEBOOK_COOMBS

                                    :Q2_COOMBS_TUT 
                                    cls 
                                    set Q2_COOMBS_TUT=0
                                    set Q3_COOMBS_TUT=1
                                    echo "Yes, it was a man named Mark Winslow. I have the pink slips right here."
                                    pause 
                                    echo ___________________________________________________
                                    echo ^| 3.6.1957     COOMBS AUTOMOTIVE                 ^|
                                    echo ^|                                                ^|
                                    echo ^| THIS CAR BELONGED TO..............MARK WINSLOW ^|
                                    echo ^|                                                ^|
                                    echo ^| PRICE.............................$2300        ^|
                                    echo ^|                                                ^|
                                    echo ^| SIGNATURE.........................AMRKWJEKO    ^|
                                    echo ^|________________________________________________^|    
                                    echo.
                                    pause 
                                    cls 
                                    echo Sixth of March...that was two days ago.
                                    pause 
                                    goto NOTEBOOK_COOMBS

                                    :Q3_COOMBS_TUT 
                                    cls 
                                    set Q3_COOMBS_TUT=0
                                    set Q4_COOMBS_TUT=1
                                    echo "No, because there was a man that stopped by just a minute later and bought the car."
                                    pause 
                                    goto NOTEBOOK_COOMBS

                                    :Q4_COOMBS_TUT
                                    cls 
                                    set Q4_COOMBS_TUT=0
                                    set Q5_COOMBS_TUT=1
                                    echo "What ? Really ? It had all the legitimate paperwork...or at least it seemed like it."
                                    pause
                                    goto NOTEBOOK_COOMBS

                                    :Q5_COOMBS_TUT 
                                    cls 
                                    set Q5_COOMBS_TUT=0
                                    echo "Marques printing co. I think they might have been involved in car theft before."
                                    pause 
                                    set CLUE_MARQUES_TUT
                                    goto NOTEBOOK_COOMBS

                                    :COOMBS_CLUES
                                    cls 
                                    echo                        ______________________________________________________
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                       CLUES                        ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The tires on the car are blown. Someone probably ^|
                                    echo                        ^|   shot them.                                       ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The only thing in the boot is a spare tire.      ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The eyewitness saw a man running out of the car  ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   The man was wearing a grey hoodie and blue jeans ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   Some man took a heavy black bag out of the hood. ^|
                                    echo                        ^|   Probably money.                                  ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   There was a knife covered in blood. Could just be^| 
                                    echo                        ^|   a kitchen knife from the restaurant, but         ^|
                                    echo                        ^|   according to the situation, it was most likely   ^|
                                    echo                        ^|   used to attempt a murder.                        ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|   We got the name of the victim-Jason Burch        ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|      B                                  N          ^|
                                    echo                        ^|  ^<-BACK                               NEXT -^>      ^
                                    echo                        ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==B goto NOTEBOOK_COOMBS
                                    if %answer%==N goto CLUES_COOMBS_TUT_2
                                    goto CLUES_RES_TUT

                                    :CLUES_COOMBS_TUT_2
                                    cls 
                                    echo                        ______________________________________________________
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                       CLUES                        ^|
                                    echo                        ^|                                                    ^|
if %CLUE_COOMBS_TUT% GTR 0          echo                        ^|  The victim says that he bought the car ^at Coombs ^|
if %CLUE_COOMBS_TUT% GTR 0          echo                        ^|  automotive. We better check there.                ^|
                                    echo                        ^|                                                    ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  The victim says that someone was chasing him and  ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  then stabbed him. We could go check on the crime  ^|
if %JASON_STORY_CLUE% GTR 0         echo                        ^|  scene again and ask ^if they have any footage.    ^|
                                    echo                        ^|                                                    ^|
if %CLUE_ASIAN_TUT% GTR 0           echo                        ^|  The witness said the man who chased him was a     ^|
if %CLUE_ASIAN_TUT% GTR 0           echo                        ^|  5'7 asian with black hair.                        ^|
                                    echo                        ^|                                                    ^|
if %CLUE_BUICK_TUT% GTR 0           echo                        ^|  The hotel staff say that Jason bought a new car   ^|
if %CLUE_BUICK_TUT% GTR 0           echo                        ^|  a month ago. Means that he probably has money.    ^|
                                    echo                        ^|                                                    ^| 
if %CLUE_MARQUES_TUT% GTR 0         echo                        ^| The company that prints these pink slips is ^called ^|
if %CLUE_MARQUES_TUT% GTR 0         echo                        ^| Marques printing co. They say the company has been ^|
if %CLUE_MARQUES_TUT% GTR 0         echo                        ^| involved in GTA before.                            ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|                                                    ^|
                                    echo                        ^|      B                                             ^|
                                    echo                        ^|  ^<-BACK                                            ^|
                                    echo                        ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==B goto COOMBS_CLUES
                                    goto CLUES_COOMBS_TUT_2

                                    :MAP_TUT_2
                                    cls 
                                    echo      _____________________
                                    echo     ^|                   ^|
                                    echo     ^|                   ^|
                                    echo     ^|                   ^|________
                                    echo     ^|      HOSPITAL     ^|        ^|_______________________ 
                                    echo     ^|                   ^|        ^|_________________     ^|
                                    echo     ^|                   ^|________^|                   ^|  ^|
                                    echo     ^|                   ^|                            ^|  ^|    
                                    echo     ^|                   ^|                            ^|  ^|     ___________________________________________________ 
                                    echo     ^|___________________^|                            ^|  ^|    ^|                    2 CRIME SCENE                 ^|
                                    echo                                                      ^|  ^|    ^|    ________________           ____________       ^| 
                                    echo                                                      ^|  ^|    ^|   ^|     1         ^|          ^|           ^|       ^|
                                    echo                                                      ^|  ^|    ^|   ^|    HOTEL      ^|          ^| RESTAURANT^|       ^|
                                    echo                                                      ^|  ^|    ^|   ^|   (open)      ^|          ^|   (open)  ^|       ^|
                                    echo                                                      ^|  ^|    ^|   ^|_______________^|          ^|_____3_____^|       ^|
                                    echo                            __________________________^|  ^|_________________________________________________________________________
                                    echo                            ^| _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _    ^|
                                    echo                            ^|    ________________________________________________________________________________________________  ^|
                                    echo                            ^|   ^|                                 ^|\   \           ^|     ^|           /   /^|                     ^|  ^|
                                    echo                            ^|   ^|                                 ^| \   \          ^|     ^|          /   / ^|                     ^|  ^|
                                    echo                            ^|   ^|                                 ^|  \   \         ^| PARK^|         /   /  ^|                     ^|  ^|
                                    echo                            ^|   ^|                                 ^|   \   \        ^|  6  ^|        /   /   ^|                     ^|  ^|
                                    echo                            ^|   ^|  __________                     ^|    \   \       ^|     ^|       /   /    ^|                     ^|  ^|
                                    echo                            ^|   ^| ^|    4    ^|                     ^|     \   \      ^|     ^|      /   /     ^|                     ^|  ^|
                                    echo                            ^|   ^| ^|  COOMBS ^|                     ^|      \   \     ^|     ^|     /   /      ^|                     ^|  ^|
                                    echo                            ^|   ^| ^|  AUTO   ^|                     ^|_______\___\____^|_____^|____/___/_______^|                     ^|  ^|
                                    echo                            ^|___^| ^|_________^|                                                                                   ^|  ^|
                                    echo                                                                                                                                ^|  ^|
                                    echo                                                                                                                                ^|  ^|
                                    echo                                                                                                                                ^|5 ^|
                                    echo                                                                                                                                ^|  ^|
                                    echo.                                                                                                                                    
                                    echo.
                                    echo.
                                    echo.
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==1 goto HOTEL_TUT
                                    if %answer%==2 goto CRIME_SCENE_TUT
                                    if %answer%==3 goto RESTAURANT_TUT 
                                    if %answer%==4 goto COOMBS_TUT 
                                    if %answer%==5 goto MAP#2_TUT_2 
                                    if %answer%==6 goto PARK_TUT 
                                    goto MAP_TUT_2

                                    :MAP#2_TUT_2 
                                    cls 
                                    echo ^|^^ ^|
                                    echo ^|^| ^|
                                    echo ^|B ^|
                                    echo ^|  ^|                           ______________________________   
                                    echo ^|  ^|                          ^|                            ^|
                                    echo ^|  ^|                          ^|           POLICE           ^|
                                    echo ^|  ^|                          ^|           STATION          ^|
                                    echo ^|  ^|                          ^|              1             ^|
                                    echo ^|  ^|                          ^|____________________________^|
                                    echo ^|  ^|____________________________________________________________________________________
                                    echo ^|  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  2
                                    echo ^|________________________________________________________________________________________
                                    echo.
                                    echo.
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==B goto MAP_TUT 
                                    if %answer%==2 goto MAP_TUT_3
                                    goto MAP#2_TUT_2

                                    :MAP_TUT_3
                                    cls 
                                    echo ________________________________________________________________________________________
                                    echo B  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _ 
                                    echo ________________________________________________________________________________________
                                    echo                               ^|                                 ^|
                                    echo                               ^|                                 ^|
                                    echo                               ^|      MARQUES PRINTING CO.       ^|
                                    echo                               ^|                1                ^|
                                    echo                               ^|                                 ^|
                                    echo                               ^|                                 ^|
                                    echo                               ^|_________________________________^| 
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==1 goto MARQUES_CO_TUT
                                    if %answer%==2 goto MAP#2_TUT
                                    goto MAP_TUT_3
                                    
                                    :MARQUES_CO_TUT
                                    cls 
                                    echo  ______________________________________________________
                                    echo ^|                                                    ^|
                                    echo ^|                     NOTEBOOK                       ^|
                                    echo ^|                                                    ^|
                                    echo ^| 1. Hello sir, what's your name ?                   ^|
                                    echo ^|                                                    ^|
                                    echo ^| 2. Do you know a company ^Coombs automotive ?       ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|       M                                      C     ^|
                                    echo ^|   ^<-MAP                                   CLUES -^> ^|
                                    echo ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    set /p answer= 
                                    if %answer%==1 goto Q1_MARQUES_TUT 
                                    if %answer%==2 goto Q2_MARQUES_TUT 
                                    goto MARQUES_CO_TUT 


                                    :Q1_MARQUES_TUT
                                    cls 
                                    echo "I'm Will Gosberg, let me get the manager"
                                    pause 
                                    echo He gets towards the exit. 
                                    ping localhost -n 2 >nul 
                                    cls 

                                    echo Something about this guy seems particularly strange about this guy. 
                                    ping localhost -n 3 >nul 
                                    cls 
                                    
                                    echo As soon as he gets out he starts running away !
                                    ping localhost -n 3 >nul 
                                    cls 

                                    echo T 
                                    ping localhost -n 2 >nul 
                                    cls 

                                    echo T I 
                                    ping localhost -n 2 >nul 
                                    cls 

                                    echo T I P 
                                    ping localhost -n 2 >nul 
                                    cls 

                                    echo T I P:
                                    ping localhost -n 1 >nul 
                                    cls 

                                    echo T I P
                                    ping localhost -n 1 >nul 
                                    cls 

                                    echo T I P:
                                    ping localhost -n 1 >nul 
                                    cls 

                                    echo T I P
                                    ping localhost -n 1 >nul 
                                    cls 

                                    echo T I P:
                                    ping localhost -n 1 >nul 
                                    cls 

                                    echo T I P
                                    ping localhost -n 1 >nul 
                                    cls 

                                    echo T I P:
                                    ping localhost -n 1 >nul 
                                    cls 

                                    echo T I P
                                    ping localhost -n 1 >nul 
                                    cls 

                                    echo T I P:
                                    ping localhost -n 1 >nul 
                                    cls

                                    echo T I P
                                    ping localhost -n 1 >nul 
                                    cls  
                                    
                                    echo T I P: You are about to run after a possible criminal.
                                    ping localhost -n 3 >nul 
                                    cls 

                                    echo T I P: Use the WASD keys to move. 
                                    ping localhost -n 2 >nul 
                                    cls

                                    pause
                                    goto WASD_1_TUT

                                    :WASD_1_TUT 
                                    cls
                                    echo ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _o___________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_2_TUT 
                                    goto WASD_1_TUT

                                    :WASD_2_TUT 
                                    cls
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  __o__________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_3_TUT 
                                    if %answer%==A goto WASD_1_TUT
                                    goto WASD_2_TUT 

                                    :WASD_3_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  ___o_________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_4_TUT 
                                    if %answer%==A goto WASD_2_TUT
                                    goto WASD_3_TUT
                                    
                                    :WASD_4_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____o_______________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_5_TUT 
                                    if %answer%==A goto WASD_3_TUT
                                    goto WASD_4_TUT

                                    :WASD_5_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  ________o____________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_6_TUT 
                                    if %answer%==A goto WASD_4_TUT
                                    goto WASD_5_TUT

                                    :WASD_6_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  __________o__________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_7_TUT 
                                    if %answer%==A goto WASD_5_TUT
                                    goto WASD_6_TUT

                                    :WASD_7_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  ____________o________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_8_TUT 
                                    if %answer%==A goto WASD_6_TUT
                                    goto WASD_7_TUT

                                    :WASD_8_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  ______________o______^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_9_TUT 
                                    if %answer%==A goto WASD_7_TUT
                                    goto WASD_8_TUT

                                    :WASD_9_TUT
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  ________________o____^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_10_TUT 
                                    if %answer%==A goto WASD_8_TUT
                                    goto WASD_9_TUT

                                    :WASD_10_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  __________________o__^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==W goto WASD_11_TUT 
                                    if %answer%==A goto WASD_9_TUT
                                    goto WASD_10_TUT

                                    :WASD_11_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^| o ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==W goto WASD_12_TUT 
                                    if %answer%==S goto WASD_10_TUT
                                    goto WASD_11_TUT

                                    :WASD_12_TUT
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^| o  ___________________^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==W goto WASD_13_TUT 
                                    if %answer%==S goto WASD_11_TUT
                                    goto WASD_12_TUT

                                    :WASD_13_TUT
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|  o                    ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_14_TUT 
                                    if %answer%==S goto WASD_12_TUT
                                    goto WASD_13_TUT

                                    :WASD_14_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|   o                   ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_15_TUT 
                                    if %answer%==A goto WASD_13_TUT
                                    goto WASD_14_TUT

                                    :WASD_15_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|     o                 ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_16_TUT 
                                    if %answer%==A goto WASD_14_TUT
                                    goto WASD_15_TUT

                                    :WASD_16_TUT
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|       o               ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_17_TUT 
                                    if %answer%==A goto WASD_15_TUT
                                    goto WASD_16_TUT

                                    :WASD_17_TUT
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|         o             ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_18_TUT 
                                    if %answer%==A goto WASD_16_TUT
                                    goto WASD_17_TUT

                                    :WASD_18_TUT
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|           o           ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_19_TUT 
                                    if %answer%==A goto WASD_17_TUT
                                    goto WASD_18_TUT

                                    :WASD_19_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|             o         ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_20_TUT 
                                    if %answer%==A goto WASD_18_TUT
                                    goto WASD_19_TUT

                                    :WASD_20_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|               o       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_21_TUT 
                                    if %answer%==A goto WASD_19_TUT
                                    goto WASD_20_TUT

                                    :WASD_21_TUT
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                 o     ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_22_TUT 
                                    if %answer%==A goto WASD_20_TUT
                                    goto WASD_21_TUT

                                    :WASD_22_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                  o   ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_23_TUT 
                                    if %answer%==A goto WASD_21_TUT
                                    goto WASD_22_TUT

                                    :WASD_23_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                   o   ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==D goto WASD_24_TUT 
                                    if %answer%==A goto WASD_22_TUT
                                    goto WASD_23_TUT

                                    :WASD_24_TUT
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^|    ^|
                                    echo.                 ^|                    o  ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==W goto WASD_25_TUT 
                                    if %answer%==A goto WASD_23_TUT
                                    goto WASD_24_TUT

                                    :WASD_25_TUT 
                                    cls 
                                    echo  ______________________________________exit____________________ 
                                    echo.                  __________________^| o  ^|
                                    echo.                 ^|                       ^|
                                    echo.                 ^|   ___________________ ^|            
                                    echo. ________________^|   ^|
                                    echo  _____________________^|
                                    echo.
                                    echo.
                                    set /p answer=
                                    if %answer%==W goto SUREENDER_TUT
                                    if %answer%==S goto WASD_24_TUT
                                    goto WASD_25_TUT

                                    :SUREENDER_TUT 
                                    cls 
                                    echo "Mr. Gosberg, surrender now or I will shoot !"
                                    ping localhost -n 3 >nul
                                    cls 

                                    echo He surrenders and you take him to the central police station where you interrogate him. 
                                    ping localhost -n 4 >nul 
                                    goto GOSBERG_INTERROGATION_TUT 

                                    :GOSBERG_INTERROGATION_TUT
                                    cls 
                                    set Q1_GOSBERG_TUT=1
                                    set Q2_GOSBERG_TUT=0
                                    set Q3_GOSBERG_TUT=0
                                    set Q4_GOSBERG_TUT=0

                                    echo  ______________________________________________________
                                    echo ^|                                                    ^|
                                    echo ^|                     NOTEBOOK                       ^|
                                    echo ^|                                                    ^|
if %Q1_GOSBERG_TUT% GTR 0           echo ^| 1. Why were you running, Gosberg ?                 ^|
                                    echo ^|                                                    ^|
if %Q2_GOSBERG_TUT% GTR 0           echo ^| 2. Tell me ^more about this Cartoms warehouse       ^|
                                    echo ^|                                                    ^|
if %Q3_GOSBERG_TUT% GTR 0           echo ^| 3. ^Where is the warehouse located ?                ^|
                                    echo ^|                                                    ^|
if %Q4_GOSBERG_TUT% GTR 0           echo ^| 4. Thank you                                       ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|                                                    ^|
                                    echo ^|       M                                      C     ^|
                                    echo ^|   ^<-MAP                                   CLUES -^> ^|
                                    echo ^|____________________________________________________^|
                                    echo.
                                    echo.
                                    set /p answer= 
                                    if %answer%==1 goto Q1_GOSBERG_TUT
                                    if %answer%==2 goto Q2_GOSBERG_TUT 
                                    if %answer%==3 goto Q3_GOSBERG_TUT
                                    if %answer&==4 goto Q4_GOSBERG_TUT


                                    :Q1_GOSBERG_TUT
                                    cls 
                                    set Q1_GOSBERG_TUT=0
                                    set Q2_GOSBERG_TUT=1
                                    echo "Beacause I have some unfinished bussiness with the Cartoms warehouse and if I go to jail now, they're gonna hurt my family. They are really fucked up."
                                    pause 
                                    goto GOSBERG_INTERROGATION_TUT

                                    :Q2_GOSBERG_TUT
                                    cls 
                                    echo "Look, I confess everything"
                                    ping localhost -n 2 >nul 
                                    cls 

                                    echo "The guy who runs the place is calles Michael Fanslow-I took a huge loan from him and now I gotta pay him back"
                                    ping localhost -n 4 >nul 
                                    cls 

                                    echo "So I started printing fake pink slips for them so he could sell the cars and make some big money. They are really serious"
                                    pause 
                                    set Q2_GOSBERG_TUT=0
                                    set Q3_GOSBERG_TUT=1
                                    goto GOSBERG_INTERROGATION_TUT

                                    :Q3_GOSBERGS_TUT 
                                    cls 
                                    echo "They are on Main street avenue, behind the bar. He has a lot of men so be prepared."
                                    pause 
                                    set Q3_GOSBERG_TUT=0
                                    set Q4_GOSBERG_TUT=1

                                    :Q4_GOSBERG_TUT 
                                    cls 
                                    echo Thank you for your cooperation. 
                                    ping localhost -n 2 >nul 
                                    cls 

                                    echo But I'm afraid you're still gonna have to go to jail. 
                                    ping localhost -n 3 >nul 
                                    cls 
                                    
                                    echo We'll lower your sentence to as low as possible and in the meantime, your family will be under 24/7 surveilance for protection. 
                                    pause 
                                    cls 

                                    echo Ok now, let's go catch these fuckers. 
                                    ping localhost -n 3 >nul 
                                    cls 
                                    
                                    echo *Eye of the tiger starts playing*
                                    ping localhost -n 2 >nul 
                                    goto WAREHOUSE_TUT 

            :WAREHOUSE_TUT 
            cls 
            echo :::::::::::::///////////////////////////////////////////////////////::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
            echo ::::::::::::::://////////////////////////////////////////////////:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
            echo ::::::::::::::::://////////////////////////////////////////////:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
            echo ::::::::::::::::::::////////////////////////////////////////::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
            echo -:::::::::::::::::::::://////////////////////////////////:::::::::::::::::::::::::::-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
            echo --:::::::::::::::::::::::::////////////////////////////:::::::::::::::::::::::-:---------------------------::::::-----::::::::::::::::::::::::::::::::
            echo ---::::::::::::::::::::::::::://////////////////////::::::::::::::::::::::::------------------------------------------------:----::::::::::::::::::---
            echo ------::::::::::::::::::::::::::://///////////////:::::::::::::::::::::::-----------------------------------------------------------------------------
            echo --------::::::::::::::::::::::::::::///////////::::::::::::::::::::::---------------------------------------------------------------------------------
            echo -----------:::::::::::::::::::::::::::::::::::::::::::::::::::::::-------------------::::::::::::::::///////////+:------------------------------------
            echo --------------:::::::::::::::::::::::::::::::::::::::::::::::/++++++++++++++++++++++++++++++++++++++++++++++++++++/:----------------------------------
            echo -----------------:::::::::::::::::::::::::::::::::::::::::-./ooooooo++++++++++++++++++++++++++++++++++++++++++++++++/:--------------------------------
            echo -------------------:::::::::::::::::::::::::::::::::::::-..-+oo+++oo+++++++++++++++++++++++++++++++////////////++/++++/:------------------------------
            echo -----------------------:::::::::::::::::::::::::::::::.`.:+/shsssosss++++++++++/////////////////////////////////+/////+//-----------------------------
            echo -------------------------::::::::::::::::::::::::::-.`.:+syos/o+osssssssooo++///////////////////////////////////+//////////---------------------------
            echo -----------------------------::::::::::::::::::-..``-/oyys+/o.+++ossssssssssssoo+++/////////////////////////////+///////////:-.-----------------------
            echo -------------------------------:::::::::::::::-```-/sss+/:--+.+++osssoooooooooosssssooo+++//////////////////////+/////////////:-......-.:/:-----------
            echo --------------------------------::::::::::::-..-/+oo+/:-.``-+.+++oooooooooooooooooooooooossoo+++////////////////////////////////:....-:osyso/::-------
            echo ....-------------------------------::::::---:+osso+:-..````-+.+++ooooooooooooooooooooooooooooooooso++++////////////////////////////-./ssyyyyyyso/:----
            echo ........----------------------------:::-../osys+/:.........-+.+++oooooooooooooooooooooooooooooooooo/ooooooo++///////////////////////-/oooosyyyyyyys+/:
            echo ..........-.-----------------------:---:+ssoo/:-...........-+.+/+yysooooo+++++++++++++ooooooooooooo:++++++++o+osoo+////////:::////////++o+++oossyyyyyy
            echo ............---------------------:--:+sys+/::..............:+.+/+yyyyhhhhhyyssooooo+++++++++ooooooo:+++++++++/yhyo+++++++////::::::::::/+ooo+++++oosyy
            echo .................----------------/+oyyo/:-..-..............-+.+//hysssyyyhdhhhdhhhyyyysssooooo+++++:++++++////oyo+//////////++++////:::::/++oo+++++++o
            echo ......................---------/oss++o+/-...-..............:+.+//hssyyyyhhhhhhdyhmdhyyhyyyyyyyyysso:/++++////:////:///////://////////+/////++++++++++o
            echo .........................--:/+ss+/:-----....-..............:+-+//ysyyyydddhhhhhsyhysssysyysyhhhdhhs:/+///////:////:///////-////////////////s++++////+o
            echo .......................--:+os+:--.-.........-..............:+-+//ysyyyyhyyhysosoysyyosyyhyyyhdhhdys://///////:////:///////-///////////////-o++///+///o
            echo ......................-/os+o/-....-.........:..............:+-+//ssssssssshsoosoyyyyssyydyyhhddddys-/////////-////://////:-/////////////+/-//////////+
            echo ....................:/o/o/-+:-....-.........:............--:+-+//yssysyyyyyssssoyyyyyyhhhhdddddhhyo-////////:-////://////:-://////////////-////++////+
            echo -.................:++/-.---/:-....-.........-..............:+-+//yyhhyooooy+oooosyyssshhhyhyhddhyso-/////////-////:///+///-///////////////-//////////o
            echo :/::-............./:.-:/---+:---------......:.............-:+:///hosssooooy+ooooyyysssyyhyhhhddhhso-/////////:////:/++++//-///////////////-///++/////o
            echo ++/--......-......::-+sy---+/:----:---------:--------------/+-///yssossoooy+osooyyysssyyhyddmmdddso-/////////:////:/+++++/-///////////////-////++oo++o
            echo +//----::://::--..::-+y+:::o/:::::/:::::::--:--------------/+-///yyyssyhhyyyyyyodhdyyyddhhmmmmdhdso:/+///////:/+++:++++++/-///////////////-/+oosyhhhhh
            echo sssssoo+++++oo+++/+/:oy+/:/oo/////////::::::/::------------/+:///hyysshhhhhosss+syyohydhhhdddmdhhso:+++++////:/+++/++++++/:////////////++/:ossyyyhhhhd
            echo yyyyyyyyssoossssyys//oy+///so/////+/////::::/:::::---------/+:+//hsysyyssyyssssoyyyohyhdhhddddddhso:++++++++/://///++++++/:////////++++++/:ssyyyyyhhhh
            echo hhhhhhhhhyyssosssss+/oy++++so/////+//////:://:::::::::::---/+:+/+yyyyyssoyyosysoyyyoyydmdddmddmmdso:++++++++/:/:////+++++/://////+++++++++/syyyyyhhyhh
            echo hhhhhhhhhdhhhyyhhhyo+os+++oso++++++//////////::::::::::::--++:+/+hhhhyyyyyyysysoyyhshhddhdmdddmmdso/++++++++////////+++++/://///++++++++++/yyyhhhhhhhh
            echo yddddddddddddhyshdho+os++++so++///+///////://:::::::::::---++:++ohdddhyyyyhyhhyshhhshhdmdddddmmmmss/+++++++++//+///++++++/:/+++++++++++++++yhhdddmmmmm
            echo yyyyyyyyhhhhhyssys+o//+:///o+//////////:::::/::::::::------++:++odhhyhsoyyosyyyoysyshhhddyhhhhdmmss/+++++++++/+////++++++//+++++++++++++o++hddmmmddmmm
            echo ////////////////++oss/+:---:::::::/::::::::/:::::::-:------+/:++odhyyyyyyhyyyyyshyhyhhhdddddhhmmmss+ooo++++++/+////+++++++/+++++++++++ooo+ohhyhhyyyyyy
            echo //://///////////////++so/s+::/:-..------:::::::::::::::::--//:++sdmmmyhyyhhyyyyshhdyhdmmddddhhmmmys+ooooooo+++++++++oooooooooo+++++++++++++ossyyysyyhy
            echo ////////////////////////+oo++ss//::/:-...--------:::::::---//:++shhhhysyhhhhhhyyhhhyhddddmmmmmmNNyyooooooos+osssooooosssssosooooossssssssyyhddddhsdddd
            echo ////////////////////////////+oo++++yo/:---------...--:/+++++++oooooo+++ohhhyyyyyyyyyyyyhhhdddmmmmyyssssssssossssssossosyyysooyyyyyyyyyyssyyyyyyyhhhhhd
            echo ////////////////////////////////+++yso+++//:++-....-/+yyyysosooooooooooohhhyyyyyyyyyyyyyhhhhhhhhhhhhhhhhyyyys+ossssssosyyyyssyyyyyyyyyyyyyyyyyyyyyhhhh
            echo ////////////+//////++++///////////////////+/ss/::::::/sysooo:/ossh++dhhhhhyyyyyyyyyyyyhhhhhhhhhhddddddhhhyyyyysysssssyyyyyyyyyyyyyyyyyssssssssyyyyyyyh
            echo /////////+++++++//////++++++////////////+o++yys++++/:::yo-//:/osss++yyhyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhyyyyysssssssyyyyyyyyyyyyyyyysysssssssssyyyyyyyy
            echo ////////+++++++++++++++++++++++++//////////+ooo++///+++yo::::-::::/oo///+++oooossssssssssssyyyyyyyyyyysssssooooooooooooosssssssssssssssssssssssssyyyyy
            echo ///////++/+++++++++++++++++++++++++++///////////+o+++//osoo++/:::::::://++oooooyyyyyyssoosssssyyyyyysssooo++++++++++++++++++++++++++++++ooooooooooosss
            echo ///////++++++++++++++++++++++++++++++++++////////////++o+/::/+ssssssyyyyyyssooo+++//:::::::://///+++ooooooooo++++++++++++++++++++++++//+++++++++++++++
            echo ////+++++++++++++++++++++++++++++++++++++++++////////////+oo+/::::/+++/::::::::::::::::::::::::::::::-::::://///+++++++++++++++o+++///////////++++++++
            echo ////////+++++++++++++++++++++++++++++++//////////////:::::::/++++::--:::::::::::::::::::::::::::::::::::::::::-----:::::://///+///+++///////++++++++os
            echo.
            echo.
            echo.
            echo.
            echo.
            ping locahost -n 4 >nul 
            cls 
            echo "LAPD, on the ground now !"
            ping localhost -n 2 >nul 
            cls 

            echo As a wild shooting goes down, you chase Michael through the narrow streets of Los Angeles.
            ping localhost -n 4 >nul 
            cls 

            echo You eventually catch the guy and bring everyone down to the police station. 
            pause 
            set Q1_MICHAEL_TUT=1
            set Q2_MICHAEL_TUT=0
            set Q3_MICHAEL_TUT=0
            set Q4_MICHAEL_TUT=0

            goto MICHAEL_INTERROGATION_TUT

                                                :MICHAEL_INTERROGATION_TUT
                                                cls 
                                                echo  ______________________________________________________
                                                echo ^|                                                    ^|
                                                echo ^|                     NOTEBOOK                       ^|
                                                echo ^|                                                    ^|
if %Q1_MICHAEL_TUT% GTR 0                       echo ^| 1. How many vehicles have you stolen, Michael ?    ^|
                                                echo ^|                                                    ^|
if %Q2_MICHAEL_TUT% GTR 0                       echo ^| 2. Ok, then. We know Gosberg and Burch. They've    ^|
if %Q2_MICHAEL_TUT% GTR 0                       echo ^|    said everything they could against you. We just ^|
if %Q2_MICHAEL_TUT% GTR 0                       echo ^|    do a little ^more digging.                       ^|
                                                echo ^|                                                    ^|
if %Q3_MICHAEL_TUT% GTR 0                       echo ^| 3. So you had to kill him ?                        ^|
                                                echo ^|                                                    ^|
if %Q4_MICHAEl_TUT% GTR 0                       echo ^| 4. Who do you make bussiness with the most ?       ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|                                                    ^|
                                                echo ^|       M                                      C     ^|
                                                echo ^|   ^<-MAP                                   CLUES -^> ^|
                                                echo ^|____________________________________________________^|
                                                echo.
                                                echo.
                                                echo.
                                                echo.
                                                echo.
                                                set /p answer= 
                                                if %answer%==1 goto Q1_MICHAEL_TUT
                                                if %answer%==2 goto Q2_MICHAEL_TUT 
                                                if %answer%==3 goto Q3_MICHAEL_TUT 
                                                if %answer%==4 goto Q4_MICHAEL_TUT    
                                                if %answer%==C goto MICHAEL_CLUES_TUT
                                                if %answer%==M goto MAP_TUT_NO
                                                goto MICHAEL_INTERROGATION_TUT


                                                    :Q1_MICHAEL_TUT 
                                                    cls 
                                                    set Q1_MICHAEL_TUT=0
                                                    set Q2_MICHAEL_TUT=1
                                                    echo "I ani't telling you shit, Jack"
                                                    pause 
                                                    goto MICHAEL_INTERROGATION_TUT 
                                                    
                                                    :Q2_MICHAEL_TUT 
                                                    cls 
                                                    set Q2_MICHAEL_TUT=0
                                                    echo "Alright, alright...Look-Will owes me money. I knew he would eventually try to escape me so I had to threaten him. But I'd never hurt him."
                                                    ping localhost-n 5 >nul 
                                                    cls 

                                                    echo "And that fucker Jason...We made bussiness before and he lost me all my money...twice"
                                                    set Q3_MICHAEL_TUT=1
                                                    pause 
                                                    goto MICHAEL_INTERROGATION_TUT

                                                    :Q3_MICHAEL_TUT
                                                    cls 
                                                    set Q3_MICHAEL_TUT=0
                                                    echo "What ? Kill him? We never killed a single fly."
                                                    pause 
                                                    set Q4_MICHAEL_TUT=1
                                                    goto MICHAEL_INTERROGATION_TUT

                                                    :Q4_MICHAEL_TUT 
                                                    cls 
                                                    set Q4_MICHAEL_TUT=0
                                                    echo "Coombs Automotive. We give them cars and they give us money in big black bags"
                                                    pause 
                                                    goto ARREST_EVERYONE




                                                :MICHAEL_CLUES_TUT
                                                cls 
                                                echo                        ______________________________________________________
                                                echo                        ^|                                                    ^|
                                                echo                        ^|                       CLUES                        ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|   The tires on the car are blown. Someone probably ^|
                                                echo                        ^|   shot them.                                       ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|   The only thing in the boot is a spare tire.      ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|   The eyewitness saw a man running out of the car  ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|   The man was wearing a grey hoodie and blue jeans ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|   Some man took a heavy black bag out of the hood. ^|
                                                echo                        ^|   Probably money.                                  ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|   There was a knife covered in blood. Could just be^| 
                                                echo                        ^|   a kitchen knife from the restaurant, but         ^|
                                                echo                        ^|   according to the situation, it was most likely   ^|
                                                echo                        ^|   used to attempt a murder.                        ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|   We got the name of the victim-Jason Burch        ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|      B                                  N          ^|
                                                echo                        ^|  ^<-BACK                               NEXT -^>      ^
                                                echo                        ^|____________________________________________________^|
                                                echo.
                                                echo.
                                                set /p answer=
                                                if %answer%==B goto MICHAEL_INTERROGATION_TUT
                                                if %answer%==N goto MICHAEL_CLUES_TUT_2
                                                goto CLUES_RES_TUT
                                                
                                                :MICHAEL_CLUES_TUT_2
                                                cls 
                                                echo                        ______________________________________________________
                                                echo                        ^|                                                    ^|
                                                echo                        ^|                       CLUES                        ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|  The victim says that he bought the car ^at Coombs ^|
                                                echo                        ^|  automotive. We better check there.                ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|  The victim says that someone was chasing him and  ^|
                                                echo                        ^|  then stabbed him. We could go check on the crime  ^|
                                                echo                        ^|  scene again and ask ^if they have any footage.    ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|  The witness said the man who chased him was a     ^|
                                                echo                        ^|  5'7 asian with black hair.                        ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|  The hotel staff say that Jason bought a new car   ^|
                                                echo                        ^|  a month ago. Means that he probably has money.    ^|
                                                echo                        ^|                                                    ^| 
                                                echo                        ^| The company that prints these pink slips is ^called ^|
                                                echo                        ^| Marques printing co. They say the company has been ^|
                                                echo                        ^| involved in GTA before.                            ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|                                                    ^|
                                                echo                        ^|      B                                             ^|
                                                echo                        ^|  ^<-BACK                                            ^|
                                                echo                        ^|____________________________________________________^|
                                                echo.
                                                echo.
                                                set /p answer=
                                                if %answer%==B goto MICHAEL_CLUES_TUT
                                                goto CLUES_COOMBS_TUT_2

                                                :MAP_TUT_NO
                                                cls 
                                                echo You can't look at the map at this moment.
                                                pause 
                                                goto MICHAEL_INTERROGATION_TUT

        :ARREST_EVERYONE 
        cls 
        set ARREST_GOSBERG_TUT=1
        set ARREST_BURCH_TUT=1 
        set ARREST_MICHAEL_TUT=1
        set ARREST_COOMBS_AUTO=1
        echo Who are you going to arrest ? 
        ping locahost -n 3 >nul 
        goto NOTEBOOK_ARREST_TUT


                                :NOTEBOOK_ARREST_TUT
                                echo  ______________________________________________________
                                echo ^|                                                    ^|
                                echo ^|                     NOTEBOOK                       ^|
                                echo ^|                                                    ^|
if %ARREST_GOSBERG_TUT% GTR 0   echo ^| 1. Will Gosberg                                    ^|
                                echo ^|                                                    ^|
if %ARREST_BURCH_TUT% GTR 0     echo ^| 2. Jason Burch                                     ^|
                                echo ^|                                                    ^|
if %ARREST_MICHAEL_TUT% GTR 0   echo ^| 3. Michael Fanslow                                 ^|
                                echo ^|                                                    ^|
if %ARREST_COOMBS_AUTO% GTR 0   echo ^| 4. Coombs Automotive                               ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|                                                    ^|
                                echo ^|     O                                        C     ^|
                                echo ^| ^<-OUT                                    CLUES -^>  ^|
                                echo ^|____________________________________________________^|
                                echo.
                                echo.
                                echo.
                                set /p answer=
                                if %answer%==1 goto ARREST_GOSBERG_TUT 
                                if %answer%==2 goto ARREST_BURCH_TUT
                                if %answer%==3 goto ARREST_MICHAEL_TUT
                                if %answer%==4 goto ARREST_COOMBS_AUTO
                                if %answer%==C goto ARREST_CLUES_TUT 
                                if %answer%==O goto END_INTERROGATION_TUT 
                                goto NOTEBOOK_ARREST_TUT

                                :ARREST_GOSBERG_TUT
                                cls 
                                echo Mr. Gosberg, you're under arrest for fraud and car theft. 
                                ping localhost -n 3 >nul 
                                cls 

                                echo We're gonna put in a good word of you to the judge for cooperation. 
                                echo.
                                echo.
                                set ARREST_GOSBERG_TUT=0
                                pause 
                                goto NOTEBOOK_ARREST_TUT

                                :ARREST_BURCH_TUT 
                                cls 
                                set ARREST_BURCH_TUT
                                echo Mr. Burch, you're under arrest for conspiracy and fraud.
                                pause 
                                goto NOTEBOOK_ARREST_TUT

                                :ARREST_MICHAEL_TUT
                                cls 
                                set ARREST_MICHAEL_TUT
                                echo Mr. Fanslow, you're under arrest for fraud and car theft. You sold the car to Coombs under a fake name Mark Winslow.
                                echo.
                                echo.
                                pause 
                                goto NOTEBOOK_ARREST_TUT

                                :ARREST_COOMBS_AUTO
                                cls 
                                set ARREST_COOMBS_AUTO=0
                                echo Coombs, you're under arrest for attempted murder and cooperation in car theft. 
                                ping localhost -n 3 >nul 
                                cls 

                                echo "What ? What about some proof mr."
                                ping localhost -n 2 >nul 
                                cls 

                                echo When Michael talked about cooperating with you, it came to my mind: you give the money to Michael in black bags...an eyewitness reported a man taking a black bag out of Jason's car when he crashed.
                                ping localhost -n 6 >nul 
                                cls 

                                echo You had to kill him, beacuse he'd seen your face. He purchased the car 2 hours ago and there was no way he'd forget your face in that time. 
                                ping localhost -n 4 >nul 
                                cls 

                                echo "OK fine, I confess...fuck me"
                                pause 
                                goto NOTEBOOK_ARREST_TUT

                                :ARREST_CLUES_TUT
                                cls 
                                echo                        ______________________________________________________
                                echo                        ^|                                                    ^|
                                echo                        ^|                       CLUES                        ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|   The tires on the car are blown. Someone probably ^|
                                echo                        ^|   shot them.                                       ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|   The only thing in the boot is a spare tire.      ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|   The eyewitness saw a man running out of the car  ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|   The man was wearing a grey hoodie and blue jeans ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|   Some man took a heavy black bag out of the hood. ^|
                                echo                        ^|   Probably money.                                  ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|   There was a knife covered in blood. Could just be^| 
                                echo                        ^|   a kitchen knife from the restaurant, but         ^|
                                echo                        ^|   according to the situation, it was most likely   ^|
                                echo                        ^|   used to attempt a murder.                        ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|   We got the name of the victim-Jason Burch        ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|      B                                  N          ^|
                                echo                        ^|  ^<-BACK                               NEXT -^>      ^
                                echo                        ^|____________________________________________________^|
                                echo.
                                echo.
                                set /p answer=
                                if %answer%==B goto NOTEBOOK_ARREST_TUT
                                if %answer%==N goto ARREST_CLUES_TUT_2
                                goto CLUES_RES_TUT
                                
                                :ARREST_CLUES_TUT_2
                                cls 
                                echo                        ______________________________________________________
                                echo                        ^|                                                    ^|
                                echo                        ^|                       CLUES                        ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|  The victim says that he bought the car ^at Coombs ^|
                                echo                        ^|  automotive. We better check there.                ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|  The victim says that someone was chasing him and  ^|
                                echo                        ^|  then stabbed him. We could go check on the crime  ^|
                                echo                        ^|  scene again and ask ^if they have any footage.    ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|  The witness said the man who chased him was a     ^|
                                echo                        ^|  5'7 asian with black hair.                        ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|  The hotel staff say that Jason bought a new car   ^|
                                echo                        ^|  a month ago. Means that he probably has money.    ^|
                                echo                        ^|                                                    ^| 
                                echo                        ^| The company that prints these pink slips is ^called ^|
                                echo                        ^| Marques printing co. They say the company has been ^|
                                echo                        ^| involved in GTA before.                            ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|                                                    ^|
                                echo                        ^|      B                                             ^|
                                echo                        ^|  ^<-BACK                                            ^|
                                echo                        ^|____________________________________________________^|
                                echo.
                                echo.
                                set /p answer=
                                if %answer%==B goto ARREST_CLUES_TUT
                                goto ARREST_CLUES_TUT_2


                                :END_INTERROGATION_TUT
                                cls 
                                echo Congratulations, you've reached the end of the tutorial ! 
                                ping localhost -n 3 >nul 
                                cls 

                                echo The criminals were: 
                                echo 1.  Will Gosberg 
                                echo.
                                echo 2. Michael Fanslow  
                                echo.
                                echo 3. Mr. Coombs
                                pause 
                                goto Menu 