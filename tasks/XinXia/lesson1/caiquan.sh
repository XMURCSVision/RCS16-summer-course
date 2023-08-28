#!/bin/bash
echo "please input"
echo "choose your option1:jiandao,shitou or bu "
read choose1
echo "choose your option2:jiaodao,shitou or bu "
read choose2
if [[ "$choose1" == "jiandao" && "$choose2" == "bu" ]];then
echo "option1 win"
elif [[ "$choose1" == "jiandao" && "$choose2" == "shitou" ]];then
echo "option2 win"
elif [[ "$choose1" == "shitou" && "$choose2" == "jiandao" ]];then
echo "option1 win"
elif [[ "$choose1" == "shitou" && "$choose2" == "bu" ]];then
echo "option2 win"
elif [[ "$choose1" == "bu" && "$choose2" == "shitou" ]];then
echo "option1 win"
elif [[ "$choose1" == "bu" && "$choose2" == "jiandao" ]];then
echo "option2 win"
elif [[ "$choose1" == "$choose2" ]];then


echo "pingjv"
elif [[ "$choose1" != "jiandao" || "$choose1" != "shitou" || "$choose1" != "bu" ]];then
echo "error"
elif [[ "$choose2" != "jiandao" || "$choose2" != "shitou" || "$choose2" != "bu" ]];then
echo "error"
fi

