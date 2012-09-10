#!/bin/bash

rm -rf stock_* moded_*
./decompile.sh $1 stock_
./decompile.sh $2 moded_
./compare.sh stock_ moded_
