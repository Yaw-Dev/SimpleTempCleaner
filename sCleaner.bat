@echo off

title sCleaner V2 - by A WeirD KiD#2737

echo Are You sure you want to clean all Temp Files?
PAUSE
taskkill /f /im discord.exe
taskkill /f /im steam.exe
taskkill /f /im lghub.exe
taskkill /f /im chrome.exe

rmdir /s /q %systemdrive%\Windows\Temp
rmdir /s /q %systemdrive%\Users\%username%\AppData\Local\Temp

cls

echo Empty the Recycle Bin? [admin privileges required]
rmdir /s %systemdrive%\$Recycle.bin

cls

color 2
echo Operation Completed!
PAUSE
start https://github.com/AWeirDKiD/SimpleTempCleaner
EXIT
