load 'person.rb'
class Customer < Person
  attr_accessor :indexID , :joindate 
  def input
    puts "enter name: "
    @name = gets.chomp()
    puts "enter gender: "
    @gender = gets.chomp()
    puts "enter joindate: "
    @joindate = DateTime.now.strftime("%Y-%m-%d")
  end
end
# CREATE TABLE customers(
#   cus_id INT NOT NULL AUTO_INCREMENT,
#   name varchar(200),
#   gender int,
#   joindate date,
#   PRIMARY KEY ( cus_id )
# )
# CREATE TABLE products(
#   pro_id INT NOT NULL AUTO_INCREMENT,
#   cus_id INT NOT NULL ,
#   pro_name varchar(200),
#   quantity int,
#   PRIMARY KEY (pro_id ), 
#   FOREIGN KEY (cus_id) REFERENCES customers(cus_id) 
# )