def factorial
  yield
end

n = gets.to_i
factorial do
  for i in(1...n)
    n*=i
  end
  puts n
end
