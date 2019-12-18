#!/usr/bin/ruby -w
# gets
puts "Enter a value:"
val = gets
puts val


# putc
str = "Hello Ruby!"
putc str
puts "new line"

# puts 和print类似，只是前者有换行。

aFile = File.new("./10Module.rb", "r")
puts aFile.atime
aFile.close


File.open "./10Module.rb", "r" do |file|
  puts file.atime
  content = file.sysread 20
  file.chmod 0755
  #File.rename("oldName", "newName")
  #File.delete("oldName")
  puts content
end


File.open("file.rb") if File::exist? "file.rb"

File::file? "text.txt"

a = File.exist? "text.txt"
b = File::exist? "text.txt"
puts a, b


puts File.readable?( "test.txt" )   # => true
puts File.writable?( "test.txt" )   # => true
puts File.executable?( "test.txt" ) # => false
puts File.zero? "text.txt"


# File用于处理文件，Dir用于处理目录
Dir.foreach "/usr/bin" do |fileDirector|
  puts fileDirector
end

Dir["/usr/bin/*"]

require 'tempfile'
mFile = Tempfile.new("tingeing")
mFile.puts "haha"
puts mFile.path
mFile.close

puts Dir::pwd
puts Dir.pwd