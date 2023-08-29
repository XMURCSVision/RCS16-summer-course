#!bin/sh

echo '*******begin********'
echo '**q quit**b begin***'
read flag


while [ $flag != b -a $flag != q ]
do
	printf "plase input again:\n"
	read flag
done

if [ $flag == b ]
then
	echo 'begin'
	while true
	do	
		
		rad=$RANDOM 
		rad=`expr $rad % 10`
		echo $rad
	
		num=11

		while [ $rad != $num ]
		do
			read num
			if [ $num == q ]
			then
				printf "quit\n"
				break
			fi

			if [ $num -le 9 -a $num -ge 0 ]
			then
				if [ $num -gt $rad ]
				then
					echo 'too big'
				elif [ $num -lt $rad ]
				then
					echo 'too small'
				else
					echo 'right'
				fi
			else
				echo 'error'
				echo 'please input again'
			fi
		done
		
		if [ $num == q ]
		then
			break
		fi

	done
fi