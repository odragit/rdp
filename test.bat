C:
cd C:\Users\runneradmin\.ngrok2
echo region: ap >> port80.yml & echo tunnels: >> port80.yml & echo     default: >> port80.yml & echo         proto: udp >> ngrok.yml & echo         addr: 80 >> ngrok.yml
copy port80.yml C:\Windows\System32
nssm install ngrok C:\Windows\System32\ngrok.exe start --all --config="C:\Windows\System32\port80.yml"
