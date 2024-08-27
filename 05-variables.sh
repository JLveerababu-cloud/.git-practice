#!/bin/bash

echo "Please enter your username::"

# shellcheck disable=SC2162
read -s USERNAME #takes input into USERNAME variable

echo "Username entered is: $USERNAME"

echo "Please enter your password::"

# shellcheck disable=SC2162
read -s PASSWORD
echo "Password entered is: $PASSWORD"