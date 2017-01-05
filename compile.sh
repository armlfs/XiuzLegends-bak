#!/bin/bash

set -e

mkdir bin
javac -cp "dist/slf4j-api.jar:dist/mina-core.jar" -d bin $(find src -name *.java)
cd bin
jar cvf XiuzLegends.jar net > /dev/null
cd ..
mv bin/XiuzLegends.jar dist/XiuzLegends.jar
rm -rf bin
