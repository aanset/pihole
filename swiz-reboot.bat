@ECHO Off
    SET /P yesno=Do you want to Reboot this machine? [Y/N]:
    IF "%yesno%"=="y" GOTO Confirmation
    IF "%yesno%"=="Y" GOTO Confirmation
    IF "%yesno%"=="n" GOTO End
    IF "%yesno%"=="N" GOTO End
    
    :Confirmation
    ECHO System is going to Reboot now
    shutdown.exe -r -t 60 
    GOTO EOF
    
    :End
    ECHO System Reboot cancelled
    TIMEOUT 5 >nul
    
    :EOF
    exit
