def square_of_sum(my_array,proc_sum,proc_square)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end
my_array = gets.split().map!{|n| n.to_i}

proc_square = Proc.new{|s|
  s*=s;
}
proc_sum = Proc.new{|my_array| 
  my_array.inject {|s, num|
    s += num
  }
}

p square_of_sum(my_array,proc_sum,proc_square)