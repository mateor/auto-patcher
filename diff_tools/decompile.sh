#!/bin/bash

for JAR in core services framework; do
	java -jar baksmali.jar -b -a 15 -o $2$JAR/smali $1/$JAR.jar
	#apktool d $1/$JAR.jar $2$JAR
done
