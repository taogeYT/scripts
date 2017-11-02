rm -rf dist
python3 setup.py sdist
cd dist
tar -zxvf *.tar.gz
cd * 
python3 setup.py install
