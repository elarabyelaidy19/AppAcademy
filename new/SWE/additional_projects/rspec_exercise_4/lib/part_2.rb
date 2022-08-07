
def proper_factors(n) 
    res = [] 
    n.downto(0).each do |i| 
        res << i if n % i == 0 
    end   
    res 
end 


def aliquot_sum(n) 
    proper_factors(n).inject(&:sum)
end 


def perfect_number?(n) 
    aliquot_sum(n) == n
end 


def ideal_numbers(n) 
    nums = [] 
    num = 1
    while nums.length < n  
        count << num if perfect_number?(num) 
        num += 1 
    end 
    nums 
end 