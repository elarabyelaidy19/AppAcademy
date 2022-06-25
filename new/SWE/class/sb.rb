class Cat
    def initialize(name, color, age)
        @name = name 
        @color = color
        @age = age
    end  

    def name  
        @name 
    end 

    def color 
        @color 
    end

    def age=(age) 
        @age = age 
    end

    def burr 
        if @age > 5 
            puts @name.upcase + "purrrrrr" 
        else 
            puts "...." 
        end 
    end
    
    
end


cat_1 = Cat.new('cat', 'green', 10) 
puts cat_1.name 
cat_2 = Cat.new('cat2', 'red', 5) 
puts cat_2.color

 
puts cat_2.burr

puts cat_1.age = 5  
puts cat_1.burr 




class Car 
    
    @@num_wheels = 4
    NUMS_WHEELS = 4
    
    def self.upgrade_nums 
        @@num_wheels = 0
    end 
    
    def initialize(color) 
        @color = color 
    end 


    def color 
        @color 
    end 

    def num_wheels 
        @@num_wheels 
    end
end 


car1 = Car.new('red') 
car2 = Car.new('green')
puts car1.num_wheels
puts car2.num_wheels

car3 = Car.new('yellow') 
Car.upgrade_nums 
puts car1.num_wheels




class Dog 
    def initialize(name, bark) 
        @name = name 
        @bark = bark 
    end 
    
    def self.whos_louder(dog1, dog2) 
        if(dog1.bark.length > dog2.bark.length) 
            puts dog1.name 
        elsif(dog1.bark.length < dog2.bark.length) 
            puts dog2.name 
        else 
            puts nil 
        end 
    end 

    def name  
        @name 
    end 

    def bark 
        @bark 
    end 
end 

d1 = Dog.new("fido", "wooof") 
d2 = Dog.new("doge", "wooooooooooof") 

puts Dog.whos_louder(d1, d2)