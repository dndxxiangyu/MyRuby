#!/usr/bin/ruby -w

=begin
  变量：小写字母，下划线开头的变量
  常量：大写字母开头
  $开头：全局变量
  @开头：实例变量
  @@开头：类变量，贡献在整个额继承链中。
=end

# 未初始化的全局变量为nil
$global_variable = 10
class Class1
  def print_global
    puts "全局变量在class1中输出：#$global_variable"
  end
end

class1 = Class1.new
class1.print_global

=begin
局部变量：小写字母或下划线大头。
常量：大些字母开头。
=end
class LocalVariable
  VAR1 = 100
  Var2 = 200

  def show
    _var1 = 10
    puts "第一个常量为： #{VAR1}"
    puts "第一个变量为： #{_var1}"
    puts "name: #{__FILE__ }"
    puts "line: #{__LINE__ }"
  end
end

classLocal = LocalVariable.new
classLocal.show


# 伪变量，有着局部外观的变量，行为却是常量，不能给这些变量赋值。
# 当前方法接收器对象
puts self
puts true
puts false
puts nil # undefined
puts __FILE__
puts __LINE__
puts __dir__


# self 剖析
# 他和java的this有相似之处，但又大不同。