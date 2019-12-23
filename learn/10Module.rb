#!/usr/bin/ruby -w

#模块（Module）是一种把方法、类和常量组合在一起的方式
module Trig

  PI = 3.1415926

  def Trig.sin(x)
    puts "puts x #{x}"
  end
  class Metric

  end
end

# Mixins: module有一个神奇功能，消除了多重继承的需要，ruby没有实现多重继承，而是采用mixin作为替代品
# 通过include，这样模块中的方法就mix到类中了。

#
Trig.sin(10)
Trig::sin(10)