cd /D "C:\Users\%username%\Documents\RH Autominer"
timeout 1 >nul
wscript.exe "C:\Users\%username%\Documents\RH Autominer\invisible.vbs"^
	"C:\Users\%username%\Documents\RH Autominer\config.bat"
	
exit