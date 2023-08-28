#!/bin/bash

# Function to generate computer's choice
function computer_choice {
    choices=("Rock" "Paper" "Scissors")
    choice_index=$((RANDOM % 3))
    echo "${choices[choice_index]}"
}

while true; do
    echo "Welcome to the Rock-Paper-Scissors game!"
    echo "Please enter your choice: Rock, Paper, or Scissors (or 'q' to quit)"
    read user_input

    # Check if the user wants to quit
    if [[ "$user_input" == "q" ]]; then
        echo "Thanks for playing! Goodbye."
        break
    fi

    computer=$(computer_choice)

    echo "Your choice: $user_input"
    echo "Computer's choice: $computer"

    # Determine the game result
    if [[ "$user_input" == "$computer" ]]; then
        echo "It's a tie!"
    elif [[ "$user_input" == "Rock" && "$computer" == "Scissors" ]] ||
         [[ "$user_input" == "Paper" && "$computer" == "Rock" ]] ||
         [[ "$user_input" == "Scissors" && "$computer" == "Paper" ]]; then
        echo "You win!"
    else
        echo "You lose!"
    fi
done
