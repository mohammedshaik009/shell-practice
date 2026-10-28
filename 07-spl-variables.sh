#!/bin/bash

echo "all variables passed to this script:$@"
echo "number of variables passed:$#"
echo "first variable:$1"
echo "name of the script:$0"
echo "pid of the script:$$"
echo "who is running this script:$USER"
echo "home directory of the script:$HOME"
echo "pwd of script:$PWD"
sleep 10 &
echo "pid of the backround command running just now:$!"
wait $!
echo "line number of the script:$LINENO"
echo "random number of the script:$RANDOM"
echo "exit code of the previous command:$?"
echo "script executed in seconds:$SECONDS"
