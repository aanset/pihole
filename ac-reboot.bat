@echo off
REM This script to reboot computer every Friday at specific time.
REM Created by Support Team - AS

SET /P yesno=Hello, this is part of weekly maintenance. This computer will restart in 5 minutes. Do you want to Proceed? [Y/N]:
    IF "%yesno%"=="y" GOTO Confirmation
    IF "%yesno%"=="Y" GOTO Confirmation
    IF "%yesno%"=="n" GOTO End
    IF "%yesno%"=="N" GOTO End
    
:Confirmation
    ECHO System is going to Reboot now
    shutdown.exe -r -t 300
    GOTO EOF   
    
:End
    ECHO System Reboot cancelled. We will remind you in 10 minutes.
    TIMEOUT 600
    SET /P yesno=This computer will restart in 5 minutes. Do you want to Proceed? [Y/N]:
    IF "%yesno%"=="y" GOTO Confirmation
    IF "%yesno%"=="Y" GOTO Confirmation
    IF "%yesno%"=="n" GOTO End2
    IF "%yesno%"=="N" GOTO End2

:End2
    ECHO System Reboot cancelled. We will remind you in 10 minutes.
    TIMEOUT 600
    SET /P yesno=This computer will restart in 5 minutes. This is the last reminder. You need to restart manually if you say No. Do you want to Proceed? [Y/N]:
    IF "%yesno%"=="y" GOTO Confirmation
    IF "%yesno%"=="Y" GOTO Confirmation
    IF "%yesno%"=="n" GOTO EOF
    IF "%yesno%"=="N" GOTO EOF

:EOF
    exit
