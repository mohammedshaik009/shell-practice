#!/bin/bash

echo "all variables passed to the script:$@"
echo "number of variables passed: $#"
echo "first variable:$1"
echo "name script:$0"
echo "PID of the script:$$"
echo "pwd of the script:$PWD"
echo "home directory: $HOME"
echo "who is running this script: $USER"
sleep 5 &
echo "PID of the background command running just now : $!"
wait $1 
echo "line number:$LINENO"
echo "script excecuted in seconds: $SECONDS "
echo "Random number: $RANDOM"
echo "exit code of the previous command: $?"
