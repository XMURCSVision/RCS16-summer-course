``````
#!/bin/bash
echo "welcome to 1 2 3"
echo "chooses："
echo "[1]:剪刀"
echo "[2]:石头"
echo "[3]:布"
read inin
# result=`expr ${RANDOM:0:1} % 3 + 1`
result=RANDOM:0:2 % 3 + 1
if [[ $inin == 1 || $inin == 2 || $inin == 3 ]]
then
	if [ $result == 1 ]
	then
         	echo " \       /"
           	echo "  \     /"
		echo "   \   /"
		echo " (  | |  )"
	elif [ $result == 2 ]
	then
		echo "   ------     "
		echo " /        \   "
		echo "|          |  "
		echo " \        /   "
		echo "   ------     "
	elif [ $result == 3 ]
	then
		echo "----------"
		echo "|        |"
		echo "|        |"
		echo "|        |"
		echo "----------"
	else
		echo 'error'
	fi
	if [ $result -eq $inin ]
	then
        	echo "......"
	elif [[ ((result == 1 && inin == 3)) || ((result == 2 && inin == 1)) || ((result == 3 && inin == 2)) ]]
	then
        	echo "You lose"
	else
        	echo "You win"
	fi
else
	echo "Please choose 1, 2, or 3"
fi
``````