#!/bin/bash
 
let num=$RANDOM%10 #生成一个随机数，并将值赋给num(可以规定随机数的范围)
let time=1 #猜的最少次数为1
while true
do
        read -p "请输入你猜的数字：" data
        let time+=1
        if [ $data -eq $num ]
        then
                echo "恭喜你猜对了，猜了 $time 次"
                break #这里猜对将会跳出循环输出结果
        elif [ $data -gt $num ]
        then
                echo "猜高了,请重新输入！"
        else
                echo "猜低了，请重新输入!"
        fi
done