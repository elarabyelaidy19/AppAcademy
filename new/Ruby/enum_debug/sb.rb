require 'byebug' 

def prime?(num) 
    (2...num).each do |n| 
        return false if num % n == 0 
    end  
    return true 
end

def primes(n)  
    primes = [] 
    num = 1
    while primes.count < n
        primes << num if prime?(num) 
        num+=1 
    end
    primes
end     

if __FILE__ == $PROGRAM_NAME
  p primes(100)
end
