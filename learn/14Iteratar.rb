#!/usr/bin/ruby -w

array = [1, 2, 3, 4, 5, 6]
array.each { |i| puts i }

array.each do |i|
  puts i
end

# collect 迭代器返回集合的所有元素。
arrayNew = array.collect { |i| i * 10}
puts arrayNew