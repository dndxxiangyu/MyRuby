#!/usr/bin/ruby

#  here document
print <<EOFa
    这是第一种方式创建here document，就是嵌入文档
    多行字符串。
EOFa

print <<"EOF";                # 与上面相同
    这是第二种方式创建here document
    多行字符串。
EOF

print <<`EOC`                 # 执行命令
    echo hi there
    echo lo there
    ls
EOC

print <<"foo", <<"bar"          # 您可以把它们进行堆叠
    I said foo.
foo
    I said bar.
bar


puts "main ruby progress"

# 程序运行之前被调用
BEGIN {
  puts "init ruby progress"
}

# 程序结束的结尾被调用
END {
  puts "2end ruby progress"
}
END {
  puts "1end ruby progress"
}

# 这是注释。
# 这也是注释。
# 这也是注释。
# 这还是注释。

name = "Madisetti" # 这也是注释

=begin
这是注释。
这也是注释。
这也是注释。
这还是注释。
=end


#exec "ls -al"


# 程序中的空白
# a + b 被解释为 a+b （这是一个局部变量）
# a  +b 被解释为 a(+b) （这是一个方法调用）
