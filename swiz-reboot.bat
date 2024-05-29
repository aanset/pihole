@ECHO Off
    SET /P yesno=This computer will be reboot in 5 minutes. Do you want to Proceed? [Y/N]:
    IF "%yesno%"=="y" GOTO Confirmation
    IF "%yesno%"=="Y" GOTO Confirmation
    IF "%yesno%"=="n" GOTO End
    IF "%yesno%"=="N" GOTO End
    
    :Confirmation
    ECHO System is going to Reboot now
    shutdown.exe -r -t 300
    GOTO EOF
    
    :End
    ECHO System Reboot cancelled
    TIMEOUT 5 >nul
    
    :EOF
    exit
