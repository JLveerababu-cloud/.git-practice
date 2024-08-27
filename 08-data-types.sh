#!/bin/bash

NUMBER1=$1
NUMBER2=$2

# shellcheck disable=SC2004
SUM=$(($NUMBER1+$NUMBER2))

echo "Total of $NUMBER1 and $NUMBER2 is: $SUM"