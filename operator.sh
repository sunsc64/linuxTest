#!/bin/bash

#1.算法运算符：原生的bash不支持运算符运算，需要第三方的命令支持，expr 是一款表达式计算工具，使用它能完成表达式的求值操作。

#1.1 加法运算
addition=`expr 2 + 2`;
echo ${addition}

#1.2 减法运算
subtraction=`expr 10 - 1`
echo ${subtraction}

#1.3 乘法,在乘法符号前面要加转义符
multi=`expr 10 \* 12`
echo ${multi}

#1.4 除法(加转义字符，并且结果取整)
division=`expr 10 \/ 3`;
echo ${division}

#1.5 取余数
remainder=`expr 10 % 3`
echo ${remainder}

#1.6 判断是否相等

if [ 11 == 12 ]
then
	echo "相等了"
else
	echo "不等了"
fi

#2.关系运算符：关系运算符只支持数字，不支持字符串，除非字符串的值是数字。
a=10
b=20

#2.1 -eq 判断是否相等,相等返回true
if [ $a -eq $b ] #注意变量的左右空一格
then
	echo "a==b"
else
	echo "a!=b"
fi

#2.2 -ne 判断是否相等，相等返回false
if [ $a -ne $b ]
then
	echo "a!=b"
else
	echo "a==b"
fi

#2.3 -gt 检查大小，如果左边大于右边则返回true
if [[ $a -gt $b ]]; then
	echo "a>b"
else
	echo "a<b"
fi

#2.4 -lt 检查大小，如果左边大于右边则返回flase

if [[ $a -lt $b ]]; then
	echo "a《b"
else
	echo "a》b"
fi
#2.5 -ge 检查大小，如果左边的数大于等于右边的数，返回true
c=11;
d=11;
if [[ $c -ge $d  ]]; then
	echo "c>=d"
else
	echo "c<=d"
fi
#2.5.1 -le 检查大小，如果左边的数大于等于右边的数，返回false

#3.布尔与逻辑运算符运算符
#3.1 ！非运算
#3.2 -o 或运算
#3.3 -a 与运算
#3.4 && 逻辑的and
#3.5 ||逻辑的or

#4.字符串运算符，前面的都是数字运算符
#4.1 -z 检测字符串长度是否为0，是0返回true
	#-n 与-z相反，长度为0返回false
strr=""
if [[ -z $strr ]]
 then
	echo "字符串长度为0"
fi

#4.2 str 检测字符串是否为空，如果不为空返回true
if [[  $sss ]]  #此时sss未定义
	then
	echo "字符串不为空"
else
	echo "字符串为空"
fi

#5. 文件属性测试运算符

新建一个文件跟文件夹
文件名: fileAttribute.txt
文件夹名称:faTest
权限统一设置为：777 

fileDicPath="/Users/sunshichuang/project-path/linux_test/faTest"
filePath="/Users/sunshichuang/project-path/linux_test/fileAttribute.txt"
#5.1 -d 判断文件是否是目录,是的话返回true
if [[ -d $fileDicPath ]]; then
	echo "是文件"
else
	echo "不是文件"
fi

#5.2 -r -w -x 分别检查文件/文件夹是否刻可读、可写、可执行
if [[ -r $filePath ]]; then
	echo "文件可读"
else
	echo "文件不可读"
fi

#输出文件可读，-w -x 类似，此时如果改变该文件权限，改为333（可写、可执行，不可读），即chmod 333 fileAttribute.txt,此时执行结果输出为不可读

#5.3 -e 检查文件/目录是否存在，存在就返回true
if [[ -e $filePath ]]; then
	echo "文件存在"
else
	echo "文件不存在"
fi

#5.4 -s 检查文件是否为空，空返回flase，否则返回true
if [[ -s $filePath ]]; then
	echo "文件不为空"
else
	echo "文件为空"
fi

