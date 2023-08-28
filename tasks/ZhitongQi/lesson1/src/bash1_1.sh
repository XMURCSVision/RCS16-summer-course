#!/bin/bash

# 生成范围在1到100之间的随机数
random_number=$(( RANDOM % 10 + 1 ))

# 提示用户输入一个数字
read -p "请输入一个数字: " user_number

# 比较随机数和用户输入的数字
if (( random_number > user_number )); then
    echo "随机数 $random_number 你输了"
elif (( random_number < user_number )); then
    echo "随机数 $random_number 你输了"
else
    echo "随机数 $random_number 你赢了"
fi
