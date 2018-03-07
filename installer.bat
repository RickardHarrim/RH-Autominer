@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

timeout 2 >nul
echo Installing RH Autominer.
echo:
timeout 1 >nul
echo Loading files...
timeout 1 >nul
echo code
echo creat_dir
echo installer
echo transfer

timeout 1 >nul

echo rhauto
echo config
echo cudaer32_80.dll
echo cudaer64_80.dll
echo invisible
echo laucher
echo miner.cfg
echo miner

call :colorEcho 0a "[Loading Complete]"
echo.
echo:
timeout 1 >nul

echo Creating directory...
md "C:\Users\%username%\Documents\RH Autominer"
timeout 1 >nul

call :colorEcho 0a "[Directory successfully created]"
echo.
echo:
timeout 1 >nul

echo Transferring files...
timeout 1 >nul

wmic LOGICALDISK where driveType=2 get deviceID > wmic.txt
for /f "skip=1" %%b IN ('type wmic.txt') DO (copy "%%b\RH Autominer"^
	"C:\Users\%username%\Documents\RH Autominer")
Del wmic.txt

timeout 1 >nul
call :colorEcho 0a "[All files successfully transferred]"
echo.
echo:
timeout 1 >nul

echo Setting up autostart...
timeout 2 >nul
copy "C:\Users\%username%\Documents\RH Autominer\laucher.bat"^
	"C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
timeout 1 >nul
call :colorEcho	0a "[Setup Complete]"
echo:

timeout 2 >nul
echo:
call :colorEcho 0a "[Install complete]"
echo.
echo:

timeout 1 >nul

echo Lauching RH Autominer
timeout 2 >nul

cd /D "C:\Users\%username%\Documents\RH Autominer"
timeout 1 >nul
wscript.exe "C:\Users\%username%\Documents\RH Autominer\invisible.vbs"^
	"C:\Users\%username%\Documents\RH Autominer\config.bat"

timeout 1 >nul
call :colorEcho 0a "[Lauch Complete]" 
echo.
timeout 2 >nul

timeout 5
exit

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i