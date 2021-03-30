def is_prime?(num)
  return false if num < 2

  (2...num).each do |i|
    if num % i == 0
      return true 
    else 
      return false 
    end 
  end 
  num 
end 


def nth_prime(n)
  count = 0

  num = 1
  while count < n 
    num += 1
    count += 1 if is_prime?(num)
  end 

  count
end 


def prime_range(min, max)

  primes = []

  (min..max).each do |num|
    primes << num if is_prime?(num)
  end 

  primes 
end 


