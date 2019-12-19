#!/usr/bin/ruby

# 1 Number

# 2 String
puts 'escape using "\\"'
puts 'That\'s right'

# 运算符 #{expr} ,可以为任意ruby表达式
puts "相乘 : #{1*2*2}";

# array
array = ["fred", 0, 3.14, "this is a string", ]
array.each { |z| puts z }

# hash
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
  print key, " is ", value, "\n"
end

# 范围类型

(1..10).each do |i|
  print i, " "
end

