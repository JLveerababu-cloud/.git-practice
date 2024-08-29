#!/bin/bash

# index starts from 0, size is 3

# shellcheck disable=SC2034
FRUITS=("APPLE" "KIWI" "ORANGE") #Array

# shellcheck disable=SC2154
echo "First Fruite is ${fRUITS[0]}"
echo "First Fruite is ${fRUITS[1]}"
echo "First Fruite is ${fRUITS[2]}"

# shellcheck disable=SC2145
echo "First fruit is: ${FRUITS[@]}"
