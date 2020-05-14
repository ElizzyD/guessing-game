#!/usr/bin/env bash
# File: guessinggame.sh

function evaluateguess {
    local numfiles=$(ls -la . | grep ^- | wc -l)

    if [[ $guess =~ [^0-9] ]]
    then
        echo "Please enter a positive integer value."
    elif [[ $guess -eq $numfiles ]]
    then
        echo "Congratulations! You correctly guessed that $numfiles file(s) are in the current directory."
        correct=true
    elif [[ $guess -ne $numfiles ]]
    then
        if [[ $guess -lt $numfiles ]]
        then
            echo "Sorry! Your guess was too low. Please guess again."
        elif [[ $guess -gt $numfiles ]]
        then
            echo "Sorry! Your guess was too high. Please guess again."
        fi
    fi
}

correct=false

while [[ $correct = "false" ]]
do
    echo "How many files are in the current directory? Type your guess and then press Enter."
    read guess

    evaluateguess
done
