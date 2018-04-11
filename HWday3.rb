#cau 5
class Fibonacci
  def solve_fi(s)
    return 1 if s==1||s==2
    return solve_fi(s-2)+solve_fi(s-1)
  end
end
# fi = Fibonacci.new()
# puts fi.solve_fi(4)
# puts fi.solve_fi(3)
#cau 6

class PrimeNumber
  def check_prime(s)
    return fasle if s<2
    for x in (2...s)
      return false if s%x==0
    end
    return true
  end
end

# prime = PrimeNumber.new()
# p prime.check_prime(7)

#cau7

class Perfectnumber
  def check_perfect(s)
    a = 0
    for x in (1...s)
      a=a+x if s%x==0
    end
    return true if s==a
    return false
  end
end
per = Perfectnumber.new()
p per.check_perfect(7)