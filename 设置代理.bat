@echo off
echo ��ʼ����proxy����..........
echo ���ڳ��򽫹ر��������������������
taskkill /f /im iexplore.exe
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "127.0.0.1:80" /f
color 2
echo �ѳɹ����ô������������
echo ��������رմ˶Ի���
pause>nul
