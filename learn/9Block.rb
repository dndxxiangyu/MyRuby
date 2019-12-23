#!/usr/bin/ruby -w

# block name
# 块yield语句来调用块

def test()
  puts "在 test 方法内"
  yield
  puts "你又回到了 test 方法内"
  yield
end

test do
  puts "你在块内"
end


def test1
  yield 5
  puts "在 test 方法内"
  yield 100
end

test1 { |i| puts "你在块 #{i} 内" }


def test2(&block)
  block.call
end
test2 do
  puts "hello world"
end


def test32(&block)
  block.call(10, 23)
end
test32 do |i, j|
  puts "#{i}, #{j}"
end


# BEGIN END块
BEGIN {
  puts "start"
}
END {
  puts "end"
}