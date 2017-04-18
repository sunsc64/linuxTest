#!/bin/bash

#1. 普通字符串的输出
echo test!

#2. 输出变量

name=ssc
echo $name

#3. 配合read命令使用,读取变量并打印

read name
echo hello ${name}!

#4. echo默认换行，开启不换行
# -e 开启转义功能，\c表示不换行
echo -e  "hi,boy! \c"
echo morning!

#5. 输出结果到文件

echo test result to file >ceshi.txt

#6. 单引号控制输出结果不进行任何操作，按照原样输出
unchange=111;
echo '$unchange'

#7. 显示系统命令执行结果
echo `pwd`