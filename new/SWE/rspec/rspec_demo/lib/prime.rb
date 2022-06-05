def prime?(a)
    return false if a < 2
    (2...a).each do |i| 
        return false if a % i == 0 
    end 
    true 
end 