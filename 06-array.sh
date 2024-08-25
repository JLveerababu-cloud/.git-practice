#!/bin/bash

# shellcheck disable=SC2034
# shellcheck disable=SC2054
# shellcheck disable=SC2140
FRUITS=("APPLE","KIWI","ORANGE")

echo "first fruit is:${FRUITS[0]}"
echo "first fruit is:${FRUITS[1]}"
echo "first fruit is:${FRUITS[2]}"

# shellcheck disable=SC2145
echo "FIrst fruit is:${FRUITS[@]}"