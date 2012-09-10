#!/bin/bash

for JAR in core services framework; do
	awk -f untime.awk $1/$JAR.patch > _1_$JAR.patch
	awk -f untime.awk $2/$JAR.patch > _2_$JAR.patch
	diff _1_$JAR.patch _2_$JAR.patch > _12_$JAR.patch
	[ -s _12_$JAR.patch ] && ( echo "### $JAR ###"; cat _12_$JAR.patch)
	\rm -f _1_$JAR.patch _2_$JAR.patch _12_$JAR.patch
done
