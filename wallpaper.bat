REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarSmallIcons /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bmp /f
curl -o gtpack.zip https://github.com/odragit/rdp/blob/main/gtpack.zip
move "D:\a\gtpack.zip*.*" "C:\"
set downloadurl=https://github.com/odragit/rdp/blob/main/gtpack.zip
set downloadpath=C:\Users\administrator\Downloads
set directory=C:\Users\administrator\Desktop
%WINDIR%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "& {Import-Module BitsTransfer;Start-BitsTransfer '%downloadurl%' '%downloadpath%';$shell = new-object -com shell.application;$zip = $shell.NameSpace('%downloadpath%');foreach($item in $zip.items()){$shell.Namespace('%directory%').copyhere($item);};remove-item '%downloadpath%';}"
echo download complete and extracted to the directory.
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
taskkill /f /im explorer.exe
start explorer
