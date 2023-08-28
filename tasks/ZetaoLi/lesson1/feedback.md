学习疑问:
1，使用expr计算条件表达式，如`expr [1 == 1]`时，结果应为1，然而返回值为0，网络搜索后解答如下（看不懂）：
　　{expr也可以返回其本身的退出状态，不幸的是返回值与系统最后退出命令刚好相反，成功返回1，任何其他值为无效或错误。下面的例子测试两个字符串是否相等，这里字符串为“hello”和“hello”。
　　$value=hello
　　$expr $value = "hello"
　　1
　　$echo $?
　　0
　　expr返回1。不要混淆了，这表明成功。现在检验其最后退出状态，返回0表示测试成功，
　　“hello”确实等于“hello”。}

心得:
1,无法使用type -p ls查找ls,但是可以使用whitch ls查找ls，原因为ls为ls --color==auto的别名，而type -p并不会搜索alias（即别名）或者bash内建的命令，但whitch可以