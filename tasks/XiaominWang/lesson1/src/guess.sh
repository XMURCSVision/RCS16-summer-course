game=(Rock Paper Scissors) ## 定义数组
num=`expr $RANDOM % 3` ## 定义数组下标
computer=${game[$num]} ## 定义计算机函数

## 通过随机数对3取模，获取下标分别是0，1，2的数组内容，实现计算机随机出拳

Show(){
  echo "Chose you want !"
  echo "1.${game[0]}"
  echo "2.${game[1]}"
  echo "3.${game[2]}"
}

Choose(){
    read -p "Please Chose 1-3:"  Player
    echo "------------------"
    echo "User ${game[$Player-1]}"
    echo "Computer ${game[$num]} "
    echo "------------------"
    case $Player in
    1) #user rock--0
      if [ $num -eq 0 ];then #rock
          echo "平局!"
      elif [ $num -eq 1 ];then #paper
          echo "很遗憾你输了!"
      else 
          echo "恭喜你赢了!" #scissors
      fi;;
    2) 
      if [ $num -eq 0 ];then
          echo "恭喜你赢了!"
      elif [ $num -eq 1 ];then
          echo "平局!"
      else 
          echo "很遗憾你输了!"
      fi;;
    3) #user --scissors
      if [ $num -eq 0 ];then
      if [ $num -eq 0 ];then
          echo "很遗憾你输了!"
      elif [ $num -eq 1 ];then
          echo "恭喜你赢了!"
      else 
          echo "平局!"
      fi;;  
    *)
      echo "You have to input 1-3!"  
    esac
}

Show
Choose  
