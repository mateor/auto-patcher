#!/bin/bash

contains () { for e in "${@:2}"; do [[ "$e" = "$1" ]] && return 0; done; return 1; }

JID=(system/framework/services.jar system/framework/framework.jar)
FILES=(boot.img framework.jar system/framework/core.jar system/framework/framework.jar system/framework/framework-res.apk framework)

echo ${#JID[@]}
echo ${JID[@]}

echo ""
echo "### testing =~ operator ###"
for FILE in ${FILES[@]}; do
	[[ ${JID[@]} =~ $FILE ]] && echo "yes $FILE" || echo "no  $FILE"
done

echo ""
echo "### testing contains ###"
for FILE in ${FILES[@]}; do
	(contains $FILE ${JID[@]}) && echo "yes $FILE" || echo "no  $FILE"
done
