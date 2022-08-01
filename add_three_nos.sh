#!/bin/bash
echo $0
echo "Enter the first number"
read NUM1
echo "Enter the second number"
read NUM2
echo "Enter third number"
read NUM3
SUM=$(( $NUM1 + $NUM2 + $NUM3))
echo "$SUM"



