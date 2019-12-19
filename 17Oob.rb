#!/usr/bin/ruby -w

=begin
ruby不在实例和类变量上应用任何访问控制

=end
class Box
  # 类变量
  @@count = 0

  def initialize(w, h)
    # 实例变量
    @width, @height = w, h
  end

  def printWidth
    @width
  end

  def setWidth=(value)
    @width = value
  end

  def printHeight
    @height
  end

  def setHeight(value)
    @height = value
  end

  def to_s
    "(w#{@width}, h#{@height})"
  end

  private :to_s, :printHeight


end

box = Box.new 10, 20
#puts box.printHeight
box.setWidth = "width"
#puts box.printWidth
box.setHeight(1)
#puts box.printHeight
#puts box.to_s


# ruby只支持单继承，但是支持mixins，只有接口是可以多继承的。

class Father
  BOX_COMPANY = "TATA Inc"
  def initialize(w, h)
    @width, @height = w, h
  end

  def getArea
    @area = @width * @height
    puts "father area: #{@area}"
  end
  def width
    @width
  end
  def height
    @height
  end

  def get
    puts @area
  end

  def +(other)
    Father.new(@width + other.width, @height + other.height)
  end

  def -@
    Father.new(-@width, -@height)
  end

  def *(scale)
    Father.new(@width * scale, @height * scale)
  end

  def to_s
    "(w#{@width}, h#{@height})"
  end
end
father = Father.new(1, 2)
#father.get
father.getArea
father.get

class Child < Father
  def getArea
    # 方法重载
    @area = @width * @height
    puts "child area: #{@area}"
  end
end
child = Child.new(1, 2)
child.getArea
puts child + child


# freeze冻结对象，有效把一个对象变成一个常量。
box.freeze
puts box.frozen?
#box.setHeight 10

# 访问常量
puts Father::BOX_COMPANY

# allocate创建对象，但是属性都是没有初始化
box2 = Box.allocate
box2.printWidth # 提示属性未初始化。

# 这意味着类定义可通过把该类作为当前对象来执行
class ClassBox
  puts "class : #{self.class}"
  puts "name : #{self.name}"
end
classBox = ClassBox.new