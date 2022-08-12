
def sum_to(n) 
    return 0 if n == 0 
    return n + sum_to(n-1)
end 

# p sum_to(10)


def sum_numbers(arr) 
    return nil if arr.empty?
    return arr[-1] if arr.length <= 1 
    return arr.pop + sum_numbers(arr[0..-1]) 
    # arr.first + sum_numbers(arr[1..-1])
end 

# p sum_numbers([1,2,3,4])
# p sum_numbers([3]) 
# p sum_numbers([]) 
# p sum_numbers([-80,34,7])

def gamma(n) 
    return nil if n < 1
    return 1 if n == 1
    (n-1) * gamma(n-1)
end 


def gamma2(n) 
    return fact(n-1)
end 

def fact(n) 
    return 1 if n <= 1 
    return n * fact(n-1)
end 

# p gamma(8)
# p gamma2(8)

def ice_cream(flavors, fav) 
    return false if flavors.empty?
    return true if flavors.pop == fav
    ice_cream(flavors, fav)
end 

# p ice_cream(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')
# p ice_cream(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green ')


def reverse(str)
    return str if str.length <= 1 
    return str[-1] + reverse(str[0...-1])
end 
# p reverse('hello')

def range(min, max)
    return [] if min >= max
    range(min, max-1) << max-1

end 

# p range(1, 5) 

def range2(min, max) 
    (min...max).map(&:to_i)
end 

# p range2(1, 5)


def exp1(base, power)
    return 1 if power == 0 
    return base * exp1(base, power-1)
end 


def exp2(base, power)
    return 1 if power == 0
    return base if power == 1 
    power.even? ? exp2(base, power / 2) **2 : base * (exp2(base, (power - 1) / 2 ) **2 )
end 

p exp2(2,3)
p exp2(2,4)