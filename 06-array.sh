#!/bin/bash
#index starts from 0,size is 3
FRUITS=("APPLE" "KIWI" "ORANGE") #array

 echo "first fruite is: ${FRUITS[0]}"
  echo "second fruite is: ${FRUITS[1]}"
   echo "third fruite is: ${FRUITS[2]}"

    # shellcheck disable=SC2145
    echo "first fruite is: ${FRUITS[@]}"