@echo off
echo 开始设置proxy代理..........
echo 现在程序将关闭您的浏览器。。。。。
taskkill /f /im iexplore.exe
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "127.0.0.1:80" /f
color 2
echo 已成功设置代理服务器上网
echo 按任意键关闭此对话框
pause>nul
