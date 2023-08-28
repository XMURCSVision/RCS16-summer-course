#使用case进行剪刀石头
#!/bin/bash
echo game begin,please input your nums,1 = Rock,2 = Paper,3 = Scisoors
echo player1:
read num1
echo player2:
read num2
case $num1 in
        1) case $num2 in
                1) echo dogfall
                ;;
                2) echo player2 is winner
                ;;
                3) echo player1 is winner
                ;;
           esac
        ;;
        2) case $num2 in 
                1) echo player1 is winner
                ;;
                2) echo dogfall
                ;;
                3) echo player2 is winner
                ;;
          esac
        ;;
        3) case $num2 in 
                1) echo player2 is winner
                ;;
                2) echo player1 is winner
                ;;
                3) echo dogfall
                ;;
          esac
        ;;
        *) echo player1 input a wrong num
        ;;
esac

#使用if进行剪刀石头布
#!/bin/bash
echo game begin,please input your nums,player1 and player2
echo 0 = Rock, 1 = Scissors,2 = Papers
read num1 num2
if (($num1 == $num2)); then
        echo dogfall
elif (($num1 == 0)); then
        if (($num2 == 0)); then
                echo dogfall
        elif (($num2 == 1)); then
                echo player 1 win
        elif (($num2 == 2)); then
                echo player 2 win
        fi
elif (($num1 == 1)); then
        if (($num2 == 0)); then
                echo player 2 win
        elif (($num2 == 1)); then
                echo dogfall
        elif (($num2 == 2)); then
                echo player 1 win
        fi
elif (($num1 == 2)); then
        if (($num2 == 0)); then
                echo player 1 win
        elif (($num2 == 1)); then
                echo player 2 win
        elif (($num2 == 2)); then
                echo fogfall
        fi
fi

#与人机对战
#!/bin/bash
game=(Rock Scissors Papers)
num=$[RANDOM%3]
computer=${game[$sum]}

echo "please input your num"
echo " 1. Rock"
echo " 2. Scissors"
echo " 3. Papers"

read -p "请选择 1-3  " person
case $person in
1)
  if [ $num -eq 0 ]
  then 
    echo "dogfall"
    elif [ $num -eq 1 ]
    then
      echo "fictory"
    else 
      echo "defeat"
fi;;
2)
 if [ $num -eq 0 ]
 then
    echo "defeat"
    elif [ $num -eq 1 ] 
    then
     echo "dogfall"
    else 
      echo "fictory"
fi;;
3)
 if [ $num -eq 0 ]
 then  
   echo "fictory"
   elif [ $num -eq 1 ]
   then 
     echo "defeat"
   else 
      echo "dogfall"
fi;;
*)
  echo "必须输入1-3 的数字"
esac