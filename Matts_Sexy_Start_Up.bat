
@echo off
TITLE Startup Info
REM Put this in your startup folder to use it on startup
    REM easily found by winl+r, 'shell:startup

REM First thing I like is having a CMD prompt open from the start
    REM I like the new Windows Terminal
        REM I also want it in admin because I am the only one who uses this computer

C:\Windows\system32\cmd.exe /c start /b wt 
REM start cmd /k TITLE Bruh

REM Sexy System info (kinda like neofetch except it aint linux)
    REM if you have screenfetch installed and prefer that uncomment next line and comment what you dont want
    REM screenfetch 


    echo ============================
    echo.       System Info
    echo ============================

    systeminfo | findstr /c:"OS Name"
    systeminfo | findstr /c:"OS Version"
    systeminfo | findstr /c:"System Type"
    wmic bios get serialnumber REM i dont like the formatting of this 

    echo ============================
    echo.       Network Info
    echo ============================

    REM maybe im stupid but i can never find public ip address info without using a website
    ipconfig | findstr IPv4
    ipconfig | findstr IPv6
pause 
