#!/bin/bash
#
# Quick script to automate the basic stuff to do with binaries
#
# Usage:
#     ./basic_bin_checks.sh BINARY_PATH
#
# https://github.com/7own

BIN_PATH=$1
OUT_PATH="X_CHECKS_OUTPUT"
mkdir $OUT_PATH
cd $OUT_PATH

echo "############################################"
echo "#                 CHECKSEC                 #"
echo "############################################"
checksec $BIN_PATH 2>&1 |tee checksec.log

echo
echo
echo

echo "############################################"
echo "#                 READELF                  #"
echo "############################################"
readelf -a $BIN_PATH |tee readelf.log

echo
echo
echo
