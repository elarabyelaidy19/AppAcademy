# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(a, b) 
    2.upto(a).each do |div| 
        return false if(a % div == 0 && b % div == 0)  
    end
    true
end   


def coprime?(a, b) 
    2.upto(a).none? { |div| a % div == 0 && b % div == 0 } 
end 
  
=begin 
def coprime?(a, b) 
    prime?(a) || prime?(b) ? true : false
end 

def prime?(a) 
    (2..a).each do |e| 
        return false if a % e == 0 
    end 
    return true 
end  
=end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
