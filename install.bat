rd /q /s dist
python setup.py sdist
..\WinRAR.exe x -d dist\*.tar.gz dist
cd dist
::for /f "delims=" %%a in ('dir /b/a-d/oN *.*') do  %%a
for /f "delims=" %%a in ('dir /b/ad') do cd %%a
python setup.py install
pause
