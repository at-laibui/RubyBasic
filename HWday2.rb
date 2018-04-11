# bai 3
class Add
    def initialize(param1,param2)
        @var1 = param1
        @var2 = param2
    end
    def add
        puts "add(param1,param2):#{@var1+@var2}"
    end
    def print_var
        puts "instance variable: #{@var1} #{@var2}"
    end
end
# b3 = Add.new(1,2)
# b3.print_var
# b3.add


#bai 4
class Century
    def initialize(param1)
        @var1 = param1
    end
    def solve
        a=@var1%100 #lay du cua nam : 100
        b=@var1/100 #lay phan nguyen cua nam :100
        if(a>0)
            puts "century :#{b+1}"
        else
            puts "century :#{b}"
        end
    end
end
# b4=Century.new(2000)
# b4.solve

# bai5

