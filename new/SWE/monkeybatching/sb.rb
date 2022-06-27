class String 
    def upcase? 
        self.upcase == self
    end 
end 
puts "HELLO".upcase?


class Integer 
    def prime? 
        return false if self < 2
        (2...self).each do |n| 
            if self % n == 0
                return false 
            end 
        end 
        true
    end 
end 


class Array 
    def has_zero? 
        self.include?(0) 
    end 
end 