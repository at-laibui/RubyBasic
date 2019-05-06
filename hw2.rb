# class Swap
#     def input
#         print "please enter a:"
#         @a = gets.to_i
#         print "please enter b:"
#         @b = gets.to_i
#     end
#     def swapab()
#         @a=@a+@b;
#         @b=@a-@b;
#         @a=@a-@b;
#         puts @a 
#         puts @b
#     end
# end
def tinh_t(a,b)
    yield(a,b)
end
tinh_t(1,2){|a,b| puts a+b}
tinh_t(1,2){|a,b| puts a-b}

