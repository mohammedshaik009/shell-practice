#!/bin/bash

ARRAY_NAMES=("value1" "value2" "value3")
echo "array_names are :${ARRAY_NAMES[@]}"
echo "array_names are :${ARRAY_NAMES[0]}"
echo "array_names are :${ARRAY_NAMES[1]}"
echo "array_names are :${ARRAY_NAMES[2]}"

MOVIES=("rrr" "varanasi" "pushpa")
echo "movies are:${MOVIES[@]}"
echo "movies are:${MOVIES[0]}"
echo "movies are:${MOVIES[1]}"
echo "movies are:${MOVIES[2]}"

#######
echo "all variables passed to this script:$@"
echo "number of variables passed:$#"
echo "first variable:$1"
echo "name of the script:$0"
echo "PID of script:$$"
echo "user of the script:$USER"
echo "pwd of the script:$PWD"
echo "home directory of the script:$HOME"
sleep 5 &
echo "PID of the running first command in the script:$!"
wait 5 
echo "random number:$RANDOM"
echo "line number of the script:$LINENO"
echo "script executed in seconds:$SECONDS"
ijefhuwehfuewhf
echo "exit code of the previous command:$?"