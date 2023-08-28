## 这里写学习疑问或心得
## shell基本语法
- 命令执行：Shell 可以执行各种操作系统命令。例如，ls 用于列出当前目录的内容，cd 用于切换目录，mkdir 用于创建目录等
 ls            # 列出当前目录的内容
cd /usr/bin   # 切换到 /usr/bin 目录
mkdir test    # 创建名为 test 的目录
- 变量：Shell 中可以定义和使用变量。变量名通常使用大写字母。
 name="John"  # 定义变量 name，并赋值为 "John"
age=25       # 定义变量 age，并赋值为 25
echo $name   # 打印变量 name 的值
- 条件判断：使用 if 语句进行条件判断。
if [ $num -gt 10 ]; then
    echo "大于 10"
else
    echo "小于等于 10"
fi
- 循环：使用 for 循环或 while 循环来重复执行一段代码。
for i in 1 2 3 4 5; do
    echo $i
done

num=1
while [ $num -le 5 ]; do
    echo $num
    num=$((num+1))
done
- 函数：Shell 中可以定义函数来重复使用一段代码。
greet() {
    echo "Hello!"
}

greet  # 调用函数 greet，输出 "Hello!"

## shell 中的运算符
- 数学运算符：

+：加法
-：减法
*：乘法
/：除法
%：取余
- 关系运算符：

-eq：等于
-ne：不等于
-gt：大于
-lt：小于
-ge：大于等于
-le：小于等于
- 关系运算符：

-eq：等于
-ne：不等于
-gt：大于
-lt：小于
-ge：大于等于
-le：小于等于
- 关系运算符：

-eq：等于
-ne：不等于
-gt：大于
-lt：小于
-ge：大于等于
-le：小于等于
- 赋值运算符：

=：赋值
+=：追加赋值