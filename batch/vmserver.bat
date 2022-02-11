@echo off
.\VBoxManage.exe list runningvms | find "ubuntu server 1" || ( CALL :Start_server)
::ssh -p 2222 test@127.0.0.1
CD "C:\Users\<mmm>"
putty -ssh -P 2222 -i .ssh\specialkey.ppk user1238313@127.0.0.1

::PAUSE
&& EXIT 0

:Start_server
.\VBoxManage.exe startvm "ubuntu server 1" --type headless
EXIT /B 0
