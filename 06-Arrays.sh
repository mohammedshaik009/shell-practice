#!/bin/bash

ARRAY_NAMES=("value1" "value2" "value3")
echo "values are:${ARRAY_NAMES[@]}"
echo "values are:${ARRAY_NAMES[0]}"
echo "values are:${ARRAY_NAMES[1]}"
echo "values are:${ARRAY_NAMES[2]}"

MOVIES=("rrr" "varanasi" "pushpa") #index always starts from 0
echo "Movies are: ${MOVIES[@]}"
echo "movies are: ${MOVIES[0]}"
echo "movies are: ${MOVIES[1]}"
echo "movies are: ${MOVIES[2]}"
