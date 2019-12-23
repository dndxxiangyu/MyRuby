#!/usr/bin/ruby


# 类定义


=begin
4种类型变量：
 局部变量：方法内部变量，外部不可使用
 实例变量：在变量之前放置：@
 类变量：在变量之前放置：@@
 全局变量：在变量之前：$
=end
class Customer
  @@no_of_customers = 0

  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  def display_details
    puts "customer id #{@cust_id}"
    puts "customer name #@cust_name"
    puts "customer addr #@cust_addr"
  end

  def total_no_of_customers
    @@no_of_customers += 1
    puts "total number of customers #@@no_of_customers"
  end
end

cust1 = Customer.new("id", "wuxiangyu", "hangzhou")
cust2 = Customer.new("id", "wuxiangyu1", "hangzhou1")
puts cust1.display_details
puts cust2.display_details
puts cust1.total_no_of_customers
puts cust2.total_no_of_customers