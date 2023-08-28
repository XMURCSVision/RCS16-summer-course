#!/bin/bash

#脚本不用写很难的，easy一点就行

keywords="genshin mihoyo"

for keyword in ${keywords}
do
    for file in *${keyword}*
    do
        rm ${file}
        echo 已删除${file}
    done
done