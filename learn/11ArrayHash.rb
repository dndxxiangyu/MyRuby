#!/usr/bin/ruby -w
#$LOAD_PATH << '.'
require './10Module'
Trig.sin 10
names = Array.new(20)
puts names.length
puts names.size

names = Array.new(20) { |i| i = i + 2 }
puts names

names = Array[1, 2, 3, 4]
names = Array.[]()

names = Array(1..9)

a = names.index 20

if (a == nil)
  puts "a is nil"
end

# default value
months = Hash.new("month")
months = Hash.new "month"
puts months.length
puts months["1"]

h = Hash["a" => 100, "b" => 200]
puts h['c']