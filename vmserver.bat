ECHO hello

CD  "C:\Program Files\Oracle\VirtualBox>"
.\VBoxManage.exe list runningvms | find "ubuntu server 1" || ( echo no running servers so... & CALL :Start_server)
ssh -p 2222 test@127.0.0.1

PAUSE

:Start_server
.\VBoxManage.exe startvm "ubuntu server 1" --type headless
EXIT /B 0
