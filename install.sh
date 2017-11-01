#!/bin/bash

rm -rf dist
python3 setup.py sdist
cd dist
tar -zxvf *.tar.gz
cd py_db*
python3 setup.py install
