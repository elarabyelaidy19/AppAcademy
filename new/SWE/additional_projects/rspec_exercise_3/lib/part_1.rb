def is_prime?(num) 
    return false if num < 2 
    (2...num).each do |n| 
        return false if num % n == 0  
    end 
    return true 
end 

def prime_range(min, max) 
    primes = [] 
    (min..max).each do |n| 
        primes << n if is_prime?(n) 
    end  
    primes
end 


def nth_prime(n) 
    count = 0 
    num = 1 
    while count < n 
        num += 1
        count += 1 if is_prime?(num) 
    end 
    num
end 