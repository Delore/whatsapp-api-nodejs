#!/bin/sh
echo "Commit changes"
git add . 
git commit -m "commit changes: $1"

npm version patch

PACKAGE_VERSION=$(grep '"version":' package.json | cut -d\" -f4)
echo "Nova Versão: " $PACKAGE_VERSION


git push


echo "Finished :)"