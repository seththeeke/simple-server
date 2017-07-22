#!/bin/bash

echo -------------------------------------
echo --------Simple Server Project--------
echo -------------------------------------

echo starting to build project...
gradle cleanEclipse eclipse build fatJar

start=$1

if [ "$start" = "start" ]; then
    echo starting simple server project
	java -jar SimpleServer/build/libs/project-jar.jar
fi