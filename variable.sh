#!/bin/sh

#1 变量申明，使用的时候可以带大括号{}，也可以不带，带了是为了区分边界,建议带
#变量声明等号前后不能带空格
# name="cc"
# echo $name
# 边界
# for name in 一 二 三  
#  do
#      echo "我叫孙${name}闯"
# done

#2 readonly 申明只读变量，变量不可变.普通变量可以重复声明
# my_name="ssc"
# readonly my_name
# my_name="sss"

#3 upset删除变量
testupset="123123"
unset testupset
echo $testupset #没有输出；

#4.字符串，可以单引号，可以双引号，也可以不用引号；
str=teststring;
echo $str;
#4.1单引号：单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
#单引号字串中不能出现单引号（对单引号使用转义符后也不行）。
str1='111$str'
echo $str1;
#4.2双引号
#双引号里可以有变量
#双引号里可以出现转义字符
str2="222$str"
echo $str2

#4.3字符串拼接
str3="world"
toge="hello, "$str3" !"
toge2="hello, ${str3} !"
echo $toge $toge2

#4.4获取字符串长度
str4="987654321"
echo ${#str4} #输出 9

#4.5截取字符串
# echo ${str4:0:4} #截取四个字符，下标从1开始，跟1：4效果一样 http://www.111cn.net/sys/linux/43822.htm

#4.6 字符串查找


#5.数组
#5.1定义数组，数据没有大小限制，下标从0开始，元素用空格隔开
arrays=(qwe 123 1555 666 777444);

echo ${arrays[0]}
#5.2 获取全部元素
echo ${arrays[@]}

# 取得数组元素的个数
length=${#arrays[@]}
echo ${length}
# 或者
length2=${#arrays[*]}
echo ${length2}
# # 取得数组单个元素的长度
length3=${#arrays[4]}
echo ${length3}


