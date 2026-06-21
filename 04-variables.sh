#!/bin/bash

echo "all variables passed to this script:$@"
echo "number of variables passed:$#"
echo "first variable:$1"
echo "name of script:$0"
echo "PID of the script:$$"
echo "PWD of the script:$PWD"
echo "home directory of the script:$HOME"
echo "who is running this script:$NAME"
echo "script executed in seconds:$SECONDS"
echo "number line:$NUMBERLINE"
echo "random number:$RANDOMNO"
sleep 5 &
echo "PID of background running command just now:$!"
wait $1
echo "exit code of the previous command:$?"