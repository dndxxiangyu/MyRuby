#!/usr/bin/ruby -w

# 数据库接口（DBI）层。该层是独立于数据库，并提供了一系列公共访问方法，方法的使用不分数据库服务器类型。
# 数据库驱动（DBD）层。该层是依赖于数据库，不同的驱动提供了对不同的数据库引擎的访问。MySQL、PostgreSQL、InterBase、Oracle 等分别使用不同的驱动。每个驱动都负责解释来自 DBI 层的请求，并把这些请求映射为适用于给定类型的数据库服务器的请求


# mysql install
=begin
brew install mysql
save path to ~/.bash_profile
mysql.server start
mysql_secure_installation 修改密码
pwd: wuxiangyu@123A
mysql -uroot -p

gem install dbi
gem install ruby-mysql
gem install dbd-mysql
=end

require 'mysql2'

client = Mysql2::Client.new(
    :host     => '127.0.0.1', # 主机
    :username => 'root',      # 用户名
    :password => 'wuxiangyu@123A',    # 密码
    :database => 'cc',      # 数据库
    :encoding => 'utf8'       # 编码
)
results = client.query("SELECT VERSION()")
results.each do |row|
  puts row
end