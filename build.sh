#!/bin/bash
if [ -f package.json ]; then
    npm install && npm run build
elif [ -f makefile ]; then
    make
elif [ -f setup.py ]; then
    python setup.py build
else
    echo "No build needed"
fi
