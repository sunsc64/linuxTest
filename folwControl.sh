#!/bin/bash

#1 if else if 跟test的结合使用

a=10
b=100

if test $a -eq $b 
then
	echo "a和b相等"
elif test $a -gt $b
then 
	echo "a>b"
else
	echo "a<b"
fi

#2 .for 循环
for i in 1 2 3 4 5
do
echo "current data is $i"
done

# 3.字符串
for i in hello world
do
echo "current data is $i"
done

#4 .大括号扩展
for i in {1..5}
do
   echo "current data is $i"
done

# 5.结合seq使用
for i in $(seq 1 2 20)
do
   echo "current data is $i"
done
#6(())for循环的三个表达式
for (( c=1; c<=5; c++ ))
do
    echo "current data is $c"
done


# 7.while 
int=1
while(( $int<=5 ))
do
    echo $int
    ((int+=1))
done

#8. while读取输入变量
# echo '输入你的名字: '
# while read name
# do
#     echo "hi: $name !"
# done

#9.case
# echo 'please print your name:'
# read name
# case $name in
#     job)  echo 'hi,job!'
#     ;;
#     jack)  echo 'hi,jack!'
#     ;;
#     tom)  echo 'hi,tom!'
#     ;;
#     *)  echo 'nice to meet you $name ! '
#     ;;
# esac

#10.break ,跳出无限循环语句

while :
do
    echo "输入你的名字:"
    read name
    case $name in
        job|tom) echo "hi, $name!"
        ;;
        *) echo "你不是tom或者jack！拒绝服务！"
            continue
        ;;
    esac
done




