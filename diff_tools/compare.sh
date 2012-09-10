#!/bin/bash

for JAR in core services framework; do
	diff -NpruEbB $1$JAR $2$JAR > $JAR.patch
done
