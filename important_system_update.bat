@echo off
title WARNING: Your Files Have Been Encrypted!
color 0C

:: Hide the cursor for extra creepiness
echo off
echo YOUR FILES HAVE BEEN LOCKED!
echo.
echo "Don't try to close this window."
echo "Your personal files are now encrypted and locked away."
echo "You have 4 minutes to save them before they are PERMANENTLY deleted."
echo.
echo "Pay $500 in Bitcoin to this address: [Fake Bitcoin Address]"
echo "Failure to comply will result in the loss of ALL your data."
echo.
echo Starting the countdown now...
timeout /t 3 >nul
cls

:: Start creepy music (only works if the PC has a sound beeper)
echo ^G
timeout /t 2 >nul
cls

:: Timer countdown (4 minutes)
set /a mins=3
set /a secs=60

:start_countdown
cls
echo =================================================
echo.  
echo *** WARNING: CRITICAL FILES ARE ENCRYPTED ***
echo.  
echo TIME LEFT: %mins% minutes %secs% seconds
echo.
echo =================================================
:: Reduce the time
set /a secs=%secs%-1

:: Flashing text when time is almost up
if %mins%==0 if %secs% lss 20 color 0E

:: Screen randomly flashes and pauses to create unease
if %secs%==45 color 0F
if %secs%==30 color 0C
if %secs%==15 echo Random system checks failed...

:: Play a beep sound for the last 60 seconds
if %mins%==1 if %secs%==00 echo ^G

:: Adjust time
if %secs%==0 (
    set /a mins=%mins%-1
    set /a secs=59
)

:: Countdown loop
if %mins% geq 0 (
    timeout /t 1 >nul
    goto start_countdown
)

:: End countdown and reveal prank
cls
color 0C
echo =================================================
echo.  
echo TOO LATE! Your files are gone forever...
echo.
echo =================================================
timeout /t 5 >nul
cls
echo GOT YOU! This was just a prank. :)
echo Your files are completely safe. Don't worry!
pause
exit
