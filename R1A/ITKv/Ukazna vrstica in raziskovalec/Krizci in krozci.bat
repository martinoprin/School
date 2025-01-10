@echo off
color A
setlocal enabledelayedexpansion
title KRIZCI in KROZCI

echo  __          __  ______   _        _         _____    ____    __  __   ______ 
echo  \ \        / / ^|  ____^| ^| ^|      ^| ^|       / ____^|  / __ \  ^|  \/  ^| ^|  ____^|
echo   \ \  /\  / /  ^| ^|__    ^| ^|      ^| ^|      ^| ^|      ^| ^|  ^| ^| ^| \  / ^| ^| ^|__
echo    \ \/  \/ /   ^|  __^|   ^| ^|      ^| ^|      ^| ^|      ^| ^|  ^| ^| ^| ^|\/^| ^| ^|  __^|  
echo     \  /\  /    ^| ^|____  ^| ^|____  ^| ^|____  ^| ^|____  ^| ^|__^| ^| ^| ^|  ^| ^| ^| ^|____ 
echo      \/  \/     ^|______^| ^|______^| ^|______^|  \_____^|  \____/  ^|_^|  ^|_^| ^|______^|
pause
cls

:main 
    call :naslovnastran
    if "%KONEC%"=="1" exit /b
    call :firstSetup

    :main_Loop
    call :resetBoard
    call :gameLoop
    call :endGameScreen %win%
    if /i %ponovitev%==J (
        goto main_Loop
    )
    exit /b

:naslovnastran
    echo Dobrodosli v KRIZCI in KROZCI.
    echo.
    echo.

    set /p igra=Napisi 1, da nadaljujes, oziroma katerokoli drugo tipko, da zapustis igro. 
    if /i "!igra!"=="1" goto :izbira_imen
    if /i "!igra!"=="" (
    set EXIT=1


    :izbira_imen
        cls
        set /p igr1=Ime prvega igralca? 
        cls
        goto :igralec2

        :igralec2
        set /p igr2=Ime drugega igralca? 
        cls



:firstSetup
    set p1Score=0
    set p2Score=0
    set turn=
    set p1Char=X
    set p2Char=O
    set NL=^


    set winList=1 2 3 !NL! 4 5 6 !NL! 7 8 9 !NL! 1 4 7 !NL! 2 5 8 !NL! 3 6 9 !NL! 1 5 9 !NL! 3 5 7
    exit /b

:ResetBoard
    for /l %%I in (1,1,9) do (
        set G%%I=%%I
    )
    if "%turn%"=="" (
        set /a turn=%random% %% 2 + 1
    ) else (
        set /a turn= 3 - %turn%
    )
    set turnCount=0
    set availableMoves=123456789
    set errorMessage=
    set win=0
    exit /b

:gameLoop
    set /a otherTurn= 3 - %turn%
   
    call :humanTurn

    set /a turnCount+=1
    set availableMoves=!availableMoves:%move%=!
    if NOT %win%==0 exit /b
    if %turnCount%==9 exit /b
    set /a turn= 3 - %turn%
    goto GameLoop

:humanTurn
    call :displayGrid
    echo.
    echo.%infoMessage%
    set infoMessage=
    if /i "!turn!"=="1" echo %igr1%
    if /i "!turn!"=="2" echo %igr2%
    set move=
    set /p move=Vnesi stevilko premika [1-9] - 
    if !move! lss 1 (
        set infoMessage=Neveljavna poteza, vnesi stevilko med 1 in 9.
        goto humanTurn
    )
    if !move! gtr 9 (
        set infoMessage=Neveljavna poteza, vnesi stevilko med 1 in 9.
        goto humanTurn
    )
    if NOT "!G%Move%!"=="!Move!" (
        set infoMessage=Ta poteza je ze narejena, izberi drugo.
        goto humanTurn
    )
    set G%move%=!p%turn%Char!
    call :CheckWin %turn% !p%turn%Char!
    exit /b


:displayGrid
    cls
    echo.
    echo                          ^|   ^|
    echo                        %G1% ^| %G2% ^| %G3%
    echo                      -------------
    echo                        %G4% ^| %G5% ^| %G6%
    echo                      -------------
    echo                        %G7% ^| %G8% ^| %G9%
    echo                          ^|   ^|
    exit /b

:checkWin
    for /f "tokens=1-3 delims= " %%I in ("!winList!") do (
        if "!G%%I!!G%%J!!G%%K!"=="%2%2%2" (
            set win=%1
            exit /b
        )
    )
    set win=0
    exit /b

:endGameScreen
    if NOT %win%==0 (
        set /a p%win%Score+=1
    )
    call :Displaygrid
    echo.
    echo.
    if %win% gtr 0 (
        echo Player %win% wins^!
    ) else (
        echo Izenačeno^!
    )
    echo.
    echo.
    echo                   Current Scores
    echo                   --------------
     echo               %igr1% - %p1Score%     %igr2% - %p2Score%
    echo.
    set ponovitev=
    set /p ponovitev="Zelite ponovno igro? [J/N] - "
    if /i "!ponovitev!"=="J" exit /b
    if /i "!ponovitev!"=="N" (
        exit /b
    ) else (
        goto endGameScreen
    )
