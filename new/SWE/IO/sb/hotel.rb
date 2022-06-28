require_relative './cat.rb'
require_relative './animals/dog.rb'

class Hotel
    def initialize(name) 
        @name = name
        @rooms = []
    end 

    def check_in(guest)
        @rooms << guest
    end
end


h = Hotel.new("Hotel California")

c = Cat.new("Mittens")
d = Dog.new("Fido")

h.check_in(c)
h.check_in(d)

p h