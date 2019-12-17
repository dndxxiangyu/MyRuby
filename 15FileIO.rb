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
end