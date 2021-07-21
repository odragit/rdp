start chrome https://github.com/odragit/rdp/raw/main/gtpack.zip
ping localhost -n 8 >nul
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarSmallIcons /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bmp /f
curl -o gtpack.zip https://github.com/odragit/rdp/blob/main/gtpack.zip
move "D:\a\gtpack.zip*.*" "C:\"
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
taskkill /f /im explorer.exe
taskkill /f /im chrome.exe
start explorer
