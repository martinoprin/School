@echo off
title [Epic game]
color 0A
if "%1" neq "" ( goto %1)
echo  __          __  ______   _        _         _____    ____    __  __   ______ 
echo  \ \        / / ^|  ____^| ^| ^|      ^| ^|       / ____^|  / __ \  ^|  \/  ^| ^|  ____^|
echo   \ \  /\  / /  ^| ^|__    ^| ^|      ^| ^|      ^| ^|      ^| ^|  ^| ^| ^| \  / ^| ^| ^|__
echo    \ \/  \/ /   ^|  __^|   ^| ^|      ^| ^|      ^| ^|      ^| ^|  ^| ^| ^| ^|\/^| ^| ^|  __^|  
echo     \  /\  /    ^| ^|____  ^| ^|____  ^| ^|____  ^| ^|____  ^| ^|__^| ^| ^| ^|  ^| ^| ^| ^|____ 
echo      \/  \/     ^|______^| ^|______^| ^|______^|  \_____^|  \____/  ^|_^|  ^|_^| ^|______^|
pause
:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit

:Exit
cls
echo Thanks for playing!
pause
exit /b

:Credits
cls
echo Credits
echo.
echo Thank you for playing [Epic game]!
pause
goto Menu

:Start_1
cls
echo O ne rusija napada!!!
echo Ce se branis imas veliko moznost zmage.
set /p answer=Protinapad ali beg?
if %answer%==protinapad goto Fight_1
if %answer%==beg goto Run_1
pause

:Run_1
cls
echo You live to fight another day.
pause
goto Start_1
:Fight_1
echo Prepare to fight.
echo The enemies suddenly rush you all at once.
set /p answer= Type 1 and press Enter to continue.
if %answer%==1 goto Fight_1_Loop
:Fight_1_Loop
set /a num=%random%
if %num% gtr 4 goto Fight_1_Loop
if %num% lss 1 goto Fight_1_Loop
if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1
:Lose_Fight_1
cls
echo You were defeated. Play again?
pause
goto Menu
:Win_Fight_1
cls
echo You are victorious!
set /p answer=Would you like to save? [y/n]
if %answer%=='y' goto 'Save'
if %answer%=='n' goto 'Start_2'
:Save
goto Start_2