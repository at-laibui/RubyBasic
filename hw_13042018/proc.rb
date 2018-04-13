def square_of_sum (my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end

proc_square = Proc.new{|s| s *= s}
proc_sum = Proc.new {|my_array|
  my_array.inject{|s, num| s += num}
}
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square, proc_sum)
