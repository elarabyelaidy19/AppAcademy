
require "byebug"

def is_prime?(number) 
  (2...number).each do |factor|
    return false if number % factor == 0
  end 

  true 
end 

def first_n_primes(num_primes)
  primes = []
  num = 2


  while num_primes > primes.length
    primes << num if is_prime?(num)

    num += 1
  end 

  primes 
end 

debugger
p first_n_primes(7)