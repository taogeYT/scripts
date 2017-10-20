@echo off
echo 禁用本地连接
netsh interface set interface name="无线网络连接" admin=disabled
echo 启用本地连接
netsh interface set interface name="无线网络连接" admin=enabled
pause 
exit