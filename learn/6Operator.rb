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
<=>：联合操作符  (a<=>b) 0, 1, -1
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

# ===: (1..10) === 5, true
# .eql? 具有相同类型和相等的值。 1==1.0 true, 1.eql?(1.0) false
# equal? 具有相同的对象id。
#
#
#
# and 等价于 &&， or等价于||,
#
#
# ?: 三元符，
puts true ? "true" : "ffalse"

# 范围：
# : 1..10, 1到10范围
# : 1...10, 1到9范围
#
# defined? 是否已经初始化
puts defined? puts
puts defined? a
puts defined? bar # nil

puts defined? super # 可被超级用户调用的方法
puts defined? yield


#. 用来调用类或者模块方法。
# :: 可以使用类或模块名称和::来引用类或模块中的常量值。
MR_COUNT = 0        # 定义在主 Object 类上的常量
module Foo
  MR_COUNT = 10
end
puts MR_COUNT       # 这是全局常量
puts Foo::MR_COUNT  # 这是 "Foo" 的局部常量s



