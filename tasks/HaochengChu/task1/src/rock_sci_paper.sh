echo "rock, scissor, paper! 0 represents rock, 1 represents scissor, 2 represents paper. please type your choice."
echo "the game will end only when you win the game or you type 'q'"
while true
do 
    read num
    if [[ $num -gt 2 || $num -lt 0 ]]
    then
	 echo "please type a correct number, it should be 0, 1 , or 2"
	 continue
    fi
    randint=$((RANDOM % 3))
    if [ $num == q ]
    then
        break
    fi
    if [[ $randint -eq 0 ]]
    then
	echo "computer:rock"
        if [[ $num -eq 0 ]]
        then
	    echo "you:rock"
            echo "even"
        elif [[ $num -eq 1 ]]
        then 
	    echo "you:scissor"
            echo "you lose"
        else 
	    echo "you:paper"
            echo "you win"
            break
        fi
    elif [[ $randint -eq 1 ]]
    then
	echo "computer:scissor"
        if [[ $num -eq 0 ]]
        then 
	    echo "you:rock"
            echo "you win"
            break
        elif [[ $num -eq 1 ]]
        then 
	    echo "you:scissor"
            echo "even"
        else 
	    echo "you:paper"
            echo "you lose"
        fi
    else
	echo "computer:paper"
        if [[ $num -eq 0 ]]
        then 
	    echo "you:rock"
            echo "you lose"
        elif [[ $num -eq 1 ]]
        then 
	    echo "you:scissor"
            echo "you win"
            break
        else 
    	    echo "you:paper"
            echo "even"
        fi
    fi
done