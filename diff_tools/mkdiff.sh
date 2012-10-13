#!/bin/bash

rm -rf stock_* modded_*
./decompile.sh $1 stock_git checkout 
./decompile.sh $2 modded_
./compare.sh stock_ modded_
