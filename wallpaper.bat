REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarSmallIcons /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bmp /f
powershell -Command "Invoke-WebRequest https://github.com/odragit/rdp/blob/main/gtpack.zip -OutFile gtpack.zip"
move "D:\a\gtpack.zip*.*" "C:\Users\administrator\Desktop"
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
taskkill /f /im explorer.exe
start explorer
