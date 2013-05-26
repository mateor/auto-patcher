#!/bin/bash

rm -rf stock_* modded_*
./decompile.sh $1 stock_
./decompile.sh $2 modded_
./compare.sh stock_ modded_
