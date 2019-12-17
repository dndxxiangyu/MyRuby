#!/usr/bin/ruby -w

a = 2
b = 3

d = a == b
puts d
d = 1
puts d

=begin
比较运算符
==
!=
<=>：联合操作符  (a<=>b) -1
=end

a, b, c = 1, 2, 3
puts "#{a}, #{b}, #{c}"


# range
# 1..10, 包含结束点
# 1...10，不包含结束点。

# defined? 运算符
custom = 1
puts "#{defined? custom}"
$global_custom = 10
puts "#{defined? $global_custom}"

# . ::,后者标示引用类或模块中的常量

CONST = ' out there'
class Inside_one
  CONST = proc { ' in there' }

  def where_is_my_CONST
    ::CONST + ' inside one'
  end
end
class Inside_two
  CONST = ' inside two'

  def where_is_my_CONST
    CONST
  end
end
puts Inside_one.new.where_is_my_CONST