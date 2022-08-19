
class Item
    attr_accessor :title, :description
    
    def initialize(title, deadline, description)  
        raise 'deadline not valid' unless Item.valid?(deadline)
        @title = title 
        @deadline = deadline 
        @description = description
    end 

    def self.valid?(date) 
        parts = date.split("-").map(&:to_i) 
        yr, mo, d = parts   
        yr > 1912 && mo.between?(1,12) && d.between?(1, 31)
    end 

    def deadline=(deadline) 
        raise "deadline not valid" unless Item.valid? 
        @deadline = deadline
    end 

end