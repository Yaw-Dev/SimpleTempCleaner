@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:-------------------------------------

title sCleaner V3 - by A WeirD KiD#5573

echo Are You sure you want to clean all Temp Files?
PAUSE

taskkill /f /im discord.exe
taskkill /f /im steam.exe
taskkill /f /im chrome.exe
taskkill /f /im epicgameslauncher.exe

rmdir /s /q %systemdrive%\Windows\Temp
rmdir /s /q %systemdrive%\Users\%username%\AppData\Local\Temp

cls

echo Empty the Recycle Bin?
rmdir /s %systemdrive%\$Recycle.bin

cls

color 2
echo Operation Completed!
PAUSE
start https://github.com/AWeirDKiD/SimpleTempCleaner
EXIT
