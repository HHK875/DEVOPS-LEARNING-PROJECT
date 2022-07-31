#!/bin/bash
echo $0
hostname | awk -F "." '{print $1 ":" $2}'

