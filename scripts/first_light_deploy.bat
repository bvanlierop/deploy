@echo off
echo This script installs the first initial prequisites for new PC's.
echo Preconditions: 
echo - Logged in as a user
echo - That user is member of Administrators
echo - Internet connection is working
pause

echo.
echo.

echo Turning on always show file extensions ...
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f

echo Disabling UAC ...
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f

echo Permanently changing Powershell's execution policy (x86 and x64) ...
%SystemRoot%\SysWOW64\WindowsPowerShell\v1.0\powershell.exe Set-ExecutionPolicy RemoteSigned
%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe Set-ExecutionPolicy RemoteSigned

echo Installing Package Manager for Windows (Chocolatey) ...
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

echo Forcing Windows Updates ...
start wuauclt.exe /updatenow

echo.
echo.
echo Finished first light script, press ENTER to restart Windows (to apply all changes) ...
pause
shutdown /r
