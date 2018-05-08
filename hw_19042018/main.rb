load 'customer.rb'
require ('mysql2') 
$client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "Abc123@@")
$client.query("use hw19042");
class Main 
  def AddCustomer(cus)
    $client.query("INSERT INTO customers(name, gender, joindate) VALUES ('#{cus.name}', #{cus.gender.to_i},'#{cus.joindate}')");
    @ID = $client.query("SELECT MAX(cus_id) FROM customers").first["MAX(cus_id)"]
    puts "Add succesful Your ID: #{@ID}"
  end 
  def AddProduct
      puts "enter your ID : "
      $cus_id = gets.chomp()
      puts "enter product name : "
      $pro_name = gets.chomp()
      puts "enter quantity: "
      $quantity = gets.chomp()
      $client.query("INSERT INTO products(cus_id, pro_name, quantity ) VALUES (#{$cus_id.to_i}, '#{$pro_name}', #{$quantity})")
      
  end
  def ShowProduct
    puts "Please enter your ID:"
    @id = gets.chomp().to_i
    result = $client.query("SELECT pro_name,SUM(quantity) FROM products Where cus_id= #{@id} GROUP BY pro_name")
    if (result.count == 0) 
      puts "You have not purchased any products yet"
    else
      result.each do |element|
        puts "#{element["pro_name"]} : #{element["SUM(quantity)"]}"
      end
    end
  end
end
  main = Main.new
  while true
    puts "-----------------------"
    puts " 1 : Add Customer \n 2 : Buy Product \n 3 : Show history buy \n 4 : Exit "
    puts "-----------------------"
    print "Your choose: "
    choose = gets.chomp()
    puts "-----------------------"
    case choose
    when "1"
      cus=Customer.new
      cus.input()
      main.AddCustomer(cus)
    when "2"
      main.AddProduct
      puts "You bought: #{$pro_name} Quantity: #{$quantity}"
    when "3"
      main.ShowProduct
    when "4"
      break
    end
  end