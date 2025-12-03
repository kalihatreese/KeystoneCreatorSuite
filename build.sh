#!/bin/bash
if command -v wrangler >/dev/null 2>&1; then
    wrangler publish
elif [ -f package.json ]; then
    npm install && npm run build
elif [ -f makefile ]; then
    make
elif [ -f setup.py ]; then
    python setup.py build
else
    echo "No build needed"
fi
