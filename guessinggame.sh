#!/bin/bash

# Function to ask user for their guess
function guess_file_count {
    local correct_count=$(ls -1 | wc -l)  # Get number of files in the current directory
    local guess=-1

    while [ "$guess" -ne "$correct_count" ]; do
        echo "How many files are in the current directory?"
        read guess

        if [ "$guess" -lt "$correct_count" ]; then
            echo "Too low, try again."
        elif [ "$guess" -gt "$correct_count" ]; then
            echo "Too high, try again."
        else
            echo "Congratulations! You guessed the correct number of files."
        fi
    done
}

# Call the function to start the game
guess_file_count
