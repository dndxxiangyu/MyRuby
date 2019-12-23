#!/usr/bin/ruby -w

def test(a1 = "ruby", a2 = "Perl")
  puts "language 1 #{a1}"
  puts "language 1 #{a2}"
end

test("ruby1", "ruby2")
test "ruby1"

# 可变数量的参数

def sample(*test)
  puts "length: #{test.length}"
  for i in 0...test.length
    puts test[i]
  end
end
sample("1", 2)


# 当方法定义在类的外部，默认是private，当定义在类中，默认是public


# 类方法
class Accounts
  def reading_charge
    puts "object method"
  end
  def Accounts.return_date
    puts "class method"
  end
end

accounts = Accounts.new
accounts.reading_charge
Accounts.return_date

# 返回值：默认最后一个语句的值
#