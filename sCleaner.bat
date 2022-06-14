@echo off

title sCleaner
echo Made by A WeirD KiD#2737

taskkill /f /im discord.exe
taskkill /f /im steam.exe
taskkill /f /im lghub.exe
taskkill /f /im chrome.exe

rmdir /s /q %systemdrive%\Windows\Temp
rmdir /s /q %systemdrive%\Users\%username%\AppData\Local\Temp

echo Empty the Recycle Bin?
rmdir /s %systemdrive%\$Recycle.bin