#!/bin/bash
#
# Quick script to automate the creation of the folder structure
# for my challs
#
# Usage:
#     ./new_chall.sh NAME_OF_CHALLENGE
#
# https://github.com/7own

NAME=$1
mkdir -p $NAME/00_BINARY $NAME/01_EXPLOIT $NAME/ZZ_GHIDRA

