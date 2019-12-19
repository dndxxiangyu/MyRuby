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
