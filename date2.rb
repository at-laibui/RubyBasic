#!usr/bin/ruby -w

# global variable
#  $global = "hello"
# class Class1
#     def print1
#         puts "Global value :#{$global}"
        
#     end
# end
# class Class2
#     def print1
#         puts "Global value :#{$global}"
#     end
# end

#instance variable
class Class1
    def initialize (value1, value2)
        @ins_var1= value1;
        @ins_var2= value2;
    end
    def print_var
        puts "instance variable: #{@ins_var1} #{@ins_var2}"
    end
    def set_var(value)
        @ins_var1 = value
    end
end
ob1 = Class1.new(1,2)
ob2 = Class1.new(3,4)
ob1.set_var(100)
ob1.print_var
ob2.print_var
