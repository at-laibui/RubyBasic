class Person
  attr_accessor :name , :gender
  def text 
    puts "person"
  end
  def input 
    puts "enter name: "
    @name = gets.chomp()
    puts "enter gender: "
    @gender = gets.chomp()
  end 
end