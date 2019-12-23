#!/usr/bin/ruby -w
#

# if else
a = 20

if a == 10 then
  puts "a is 10"
elsif a == 20 then
  puts "a is 20"
else
  puts "a is nothing"
end

if a == 10
  puts "a is 10"
elsif a == 20
  puts "a is 20"
else
  puts "a is nothing"
end


# if修饰符
$debug = 1
print "debug\n" if $debug


# unless，和if相反
x = 10
unless x > 10
  puts "x > 10"
else
  puts "x < 10"
end

$var = 10
puts "1 -- first line" if $var
puts "2 -- second line" unless $var

$age = 5
case $age
when 0..2
  puts "婴儿"
when 3..6
  puts "小孩"
when 7..12
  puts "child"
when 13..18
  puts "少年"
else
  puts "其他年龄段的"
end


# while

$i = 0
$num = 5
while $i < $num do
  puts "i = #$i"
  $i += 1
end

$i = 0
$num = 5

until $i > $num do
  puts("在循环语句中 i = #$i")
  $i += 1;
end

$i = 0
$num = 5
begin
  puts("在循环语句中 i = #$i")
  $i += 1
end while $i < $num


# for
for i in 1..5
  puts "value : #{i}"
end

(1..5).each do |i|
  puts "item: #{i}"
end

# next, break, redo


# if elsif else, 值为false或nil才是假。 then可省略
# if修饰
puts "debug" if 0
# unless, 和if相反
x = 10
unless x > 2
  puts "x small than 2"
else
  puts "x big than 2"
end
# unless修饰
puts "haha" unless x

# case,使用===比较when指定的expression，若一致的话就执行when内容。
# 和 if else类似。
$age = 10
case
when (1..2)
  puts "small"
when (9..19)
  puts "big1"
when (10..12) ## 不会执行到
  puts "big2"
end

# while语句, do可省略
$i = 1
$num = 5
while $i < 10 do
  puts "#{$i} small than 10"
  $i += 1
end
# while修饰符
begin
  puts ("in reverse")
  $i += 1
end while $i < $num


# until, 和while相反
until $age > 10 do
  puts "age small #{$age}"
  $age += 1;
end

begin
  puts "haha1111"
  $i += 1
end until $i > $num


# for
for i in (1..5)
  puts "for int #{i}"
end
a = 1..5
a.each do |i|
  puts i
end

# redo 最内部循环进行迭代。所以会死循环
for i in 0..5
  puts "局部变量的值为1"
  if i < 2 then
    puts "局部变量的值为 2#{i}"
    redo
  end
end