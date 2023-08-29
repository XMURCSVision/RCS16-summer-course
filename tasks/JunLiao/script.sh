#!/bin/bash
echo "Welcome to the game"
game_on=true
while [ "$game_on" = true ]; do
    echo "1: stone  2: scissors 3: cloth  0: quit"
    read choice
    if [ "$choice" = 0 ]; then
        echo "Thanks for playing. Goodbye!"
        game_on=false
    else
        computer_choice=$((RANDOM % 3 + 1))
        if [ "$choice" -eq "$computer_choice" ]; then
            echo "Equal"
        elif [ "$choice" -eq 1 ] && [ "$computer_choice" -eq 2 ]; then
            echo "You are winner"
        elif [ "$choice" -eq 2 ] && [ "$computer_choice" -eq 3 ]; then
            echo "You are winner"
        elif [ "$choice" -eq 3 ] && [ "$computer_choice" -eq 1 ]; then
            echo "You are winner"
        else
            echo "You are loser"
        fi
    fi
done