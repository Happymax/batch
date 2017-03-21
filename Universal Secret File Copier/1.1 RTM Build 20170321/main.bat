@echo off
title UNIVERSAL SECRET FILES COPIER VERSION 1.1
color 0c
echo.
echo UNIVERSAL SECRET FILES COPIER VERSION 1.1 BUILD 20170321
echo,

:admin
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" 

REM --> If error flag set, we do not have admin. 
if '%errorlevel%' NEQ '0' ( 
echo Requesting administrative privileges... 
goto UACPrompt 
) else ( goto gotAdmin ) 

:UACPrompt 
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs" 
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs" 

"%temp%\getadmin.vbs" 
exit /B 

:gotAdmin 
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" ) 
pushd "%CD%" 
CD /D "%~dp0" 

:main
cls
title UNIVERSAL SECRET FILES COPIER VERSION 1.1
color 0c
echo.
echo UNIVERSAL SECRET FILES COPIER VERSION 1.1 BUILD 20170321
echo.
echo WARNING:
echo.
echo Using this batch file may result in others becoming extremely angry. 
echo.
echo ARE YOU SURE YOU WANT TO CONTINUE?
echo.
echo Press Ctrl+C to cancel
echo Press ANY OTHER KEY to continue
pause >nul

:vol1
cls
if exist .\vol.ini goto vol2
echo A > vol.ini
echo B >> vol.ini
echo C >> vol.ini
echo D >> vol.ini
echo E >> vol.ini
echo F >> vol.ini
echo G >> vol.ini
echo H >> vol.ini
echo I >> vol.ini
echo J >> vol.ini
echo K >> vol.ini
echo L >> vol.ini
echo M >> vol.ini
echo N >> vol.ini
echo O >> vol.ini
echo P >> vol.ini
echo Q >> vol.ini
echo R >> vol.ini
echo S >> vol.ini
echo T >> vol.ini
echo U >> vol.ini
echo V >> vol.ini
echo W >> vol.ini
echo X >> vol.ini
echo Y >> vol.ini
echo Z >> vol.ini
goto vol2

:vol2
cls
echo.
echo Adjust which volume letters to scan by editing vol.ini in the program directory. 
echo.
echo When you're ready, press any key to continue. 
pause >nul
copy .\vol.ini .\vol.tmp
goto set

:set
cls
echo.
set /p dest=Please enter the complete directory of the file destination: 
if exist %dest% goto scan
cls
echo.
echo You didn't enter an existing directory! 
echo.
echo Press any key to continue...
pause >nul
goto set

:scan
cls
echo.
echo Scanning disk volumes...
goto A

:A
find /I "A" .\vol.tmp >nul
if %errorlevel%==1 goto B
set copy=A:
if exist %copy% goto copy
goto B

:B
find /I "B" .\vol.tmp >nul
if %errorlevel%==1 goto C
set copy=B:
if exist %copy% goto copy
goto C

:C
find /I "C" .\vol.tmp >nul
if %errorlevel%==1 goto D
set copy=C:
if exist %copy% goto copy
goto D

:D
find /I "D" .\vol.tmp >nul
if %errorlevel%==1 goto E
set copy=D:
if exist %copy% goto copy
goto E

:E
find /I "E" .\vol.tmp >nul
if %errorlevel%==1 goto F
set copy=E:
if exist %copy% goto copy
goto F

:F
find /I "F" .\vol.tmp >nul
if %errorlevel%==1 goto G
set copy=F:
if exist %copy% goto copy
goto G

:G
find /I "G" .\vol.tmp >nul
if %errorlevel%==1 goto H
set copy=G:
if exist %copy% goto copy
goto H

:H
find /I "H" .\vol.tmp >nul
if %errorlevel%==1 goto I
set copy=H:
if exist %copy% goto copy
goto I

:I
find /I "I" .\vol.tmp >nul
if %errorlevel%==1 goto J
set copy=I:
if exist %copy% goto copy
goto J

:J
find /I "J" .\vol.tmp >nul
if %errorlevel%==1 goto K
set copy=J:
if exist %copy% goto copy
goto K

:K
find /I "K" .\vol.tmp >nul
if %errorlevel%==1 goto L
set copy=K:
if exist %copy% goto copy
goto L

:L
find /I "L" .\vol.tmp >nul
if %errorlevel%==1 goto M
set copy=L:
if exist %copy% goto copy
goto M

:M
find /I "M" .\vol.tmp >nul
if %errorlevel%==1 goto N
set copy=M:
if exist %copy% goto copy
goto N

:N
find /I "N" .\vol.tmp >nul
if %errorlevel%==1 goto O
set copy=N:
if exist %copy% goto copy
goto O

:O
find /I "O" .\vol.tmp >nul
if %errorlevel%==1 goto P
set copy=O:
if exist %copy% goto copy
goto P

:P
find /I "P" .\vol.tmp >nul
if %errorlevel%==1 goto Q
set copy=P:
if exist %copy% goto copy
goto Q

:Q
find /I "Q" .\vol.tmp >nul
if %errorlevel%==1 goto R
set copy=Q:
if exist %copy% goto copy
goto R

:R
find /I "R" .\vol.tmp >nul
if %errorlevel%==1 goto S
set copy=R:
if exist %copy% goto copy
goto S

:S
find /I "S" .\vol.tmp >nul
if %errorlevel%==1 goto T
set copy=S:
if exist %copy% goto copy
goto T

:T
find /I "T" .\vol.tmp >nul
if %errorlevel%==1 goto U
set copy=T:
if exist %copy% goto copy
goto U

:U
find /I "U" .\vol.tmp >nul
if %errorlevel%==1 goto V
set copy=U:
if exist %copy% goto copy
goto V

:V
find /I "V" .\vol.tmp >nul
if %errorlevel%==1 goto W
set copy=V:
if exist %copy% goto copy
goto W

:W
find /I "W" .\vol.tmp >nul
if %errorlevel%==1 goto X
set copy=W:
if exist %copy% goto copy
goto X

:X
find /I "X" .\vol.tmp >nul
if %errorlevel%==1 goto Y
set copy=X:
if exist %copy% goto copy
goto Y

:Y
find /I "Y" .\vol.tmp >nul
if %errorlevel%==1 goto Z
set copy=Y:
if exist %copy% goto copy
goto Z

:Z
find /I "Z" .\vol.tmp >nul
if %errorlevel%==1 goto repeat
set copy=Z:
if exist %copy% goto copy
goto repeat

:copy
echo Copying...
xcopy /E /C /F /H /I %copy% %dest%
if %errorlevel%==1 goto repeat2
goto end

:repeat
echo Retry in a few seconds...
ping /n 15 127.1 >nul
goto scan

:repeat2
echo Retry because of copy failure...
goto repeat

:end
echo.
echo Program complete.
echo.
echo Press any key to restart the copy procedure. 
echo.
echo Press Ctrl+C to exit the program. 
pause >nul
goto scan
