#!/bin/bash
function count_files {
    ls -p | grep -v / | wc -l | tr -d ' '
}
files=$(count_files)
guess=-1
echo "Welcome to the guessing game"
echo "How many files are in the current directory?"
while [[ $guess -ne $files ]]
do
    read -p "Enter your guess: " guess
    if ! [[ $guess =~ ^[0-9]+$ ]]
    then
        echo "Please enter a number"
        guess=-1
    elif [[ $guess -lt $files ]]
    then
        echo "Too low, try again"
    elif [[ $guess -gt $files ]]
    then
        echo "Too high, try again"
    fi
done
echo "Congratulations! You guessed it, there are $files files"
