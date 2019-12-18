#!/usr/bin/ruby -w

=begin
begin #开始

 raise.. #抛出异常

rescue [ExceptionType = StandardException] #捕获指定类型的异常默认值是 StandardException
 $! #表示异常信息
 $@ #表示异常出现的代码位置
else #其余异常
 ..
ensure #不管有没有异常，进入该代码块，类似final

end #结束
=end

#begin
#  file = open("/noname_text")
#  if file
#    puts "file opend successfully"
#  end
#rescue
#  file = STDIN
#end
#puts file
#
#
#begin
#  file = open("/unexistant_file")
#  if file
#    puts "File opened successfully"
#  end
#rescue
#  puts $! # 异常信息
#  puts $@ # 代码位置
#  file = "existant_file"
#  retry # 重新从 begin 开始, 谨慎，避免死循环
#end
#
## raise抛出异常
#raise
#raise "Error Message"
#raise ExceptionType, "Error Message"

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring execution"
end


# catch throw，跳出一些深层潜逃的结构