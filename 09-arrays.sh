#!/bin/bash

ARRAY_NAMES=("value1" "value2" "value3")

echo "values are:${ARRAY_NAMES[@]}"
echo "first value:${ARRAY_NAMES[0]}"
echo "second value:${ARRAY_NAMES}[1]"
echo "second value:${ARRAY_NAMES}[2]"

MOVIES=("rrr" "varanasi" "pushpa")

echo "movies are:${MOVIES[@]}"
echo "first movie:${MOVIES[0]}"
echo "second movie:${MOVIES[1]}"
echo "third movie:${MOVIES[2]}"