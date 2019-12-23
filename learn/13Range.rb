#!/usr/bin/ruby -w
a = (1..5) #==> 1, 2, 3, 4, 5
b = (1...5) #==> 1, 2, 3, 4
c = ('a'..'d') #==> 'a', 'b', 'c', 'd'

# 作用：
# - 序列的范围
# - 条件的范围
# - 间隔的范围
#
puts a.include? 5
range1 = a.to_a
puts range1.length

puts range1.include? 5
puts range1.max


score = 7
result = case score
         when 0..40
           "糟糕的分数"
         when 41..60
           "快要及格"
         when 61..70
           "及格分数"
         when 71..100
           "良好分数"
         else
           "错误的分数"
         end

puts result

if (('a'..'j') === 'c')
  puts "c 在 ('a'..'j')"
end