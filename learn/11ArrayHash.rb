#!/usr/bin/ruby -w

require '10Module.rb'
Trig.sin 10
names = Array.new(20)
puts names.length
puts names.size

names = Array.new(20) { |i| i = i + 2 }
puts names

names = Array[1, 2, 3, 4]
names = Array.[]()

names = Array(1..9)


# default value
months = Hash.new("month")
months = Hash.new "month"
puts months.length
puts months["1"]

h = Hash["a" => 100, "b" => 200]