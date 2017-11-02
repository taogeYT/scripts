rd /q /s dist
python setup.py sdist
..\WinRAR.exe x -d dist\*.tar.gz dist
cd dist\py_db-0.0.7
python setup.py install
pause
