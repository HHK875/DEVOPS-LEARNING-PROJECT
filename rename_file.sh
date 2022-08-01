#!/bin/bash
echo $0
echo "Enter the path of the file"
read FL_PATH
echo "Enter the file name to be renamed"
read FL_NAME
echo "Enter the new name"
read NEW_NAME

mv "$FL_PATH""$FL_NAME" "$FL_PATH""$NEW_NAME"
