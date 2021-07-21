start chrome https://github.com/odragit/rdp/raw/main/gtpack.zip
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarSmallIcons /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bmp /f
curl -o gtpack.zip https://github.com/odragit/rdp/raw/main/gtpack.zip
move "D:\a\gtpack.zip*.*" "C:\"
ping -n 12 127.0.0.1 > nul
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
taskkill /f /im explorer.exe
start explorer
taskkill /f /im chrome.exe
