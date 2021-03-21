  # import files 
require_relative "./cat.rb"  
require_relative "./another_animal/dog.rb"


class Petthotel 
  def initialize(name)
    @name = name 
    @guests = []
  end 

  def guests(guest)
    @guests << guest 
  end 

end 


hotel_1 = Petthotel.new("elaraby")

cat_1 = Cat.new("kitty")
cat_2 = Cat.new("pussy")

dog_1 = Dog.new("snoopy")
dog_2 = Dog.new("puppy")

hotel_1.guests(cat_1)
hotel_1.guests(cat_2)

puts "--------------"

hotel_1.guests(dog_1)
hotel_1.guests(dog_2)

p hotel_1


# ===================================

# taking user inputs 

puts "inter your name "
name = gets # gets takes user input 
puts "your name is " + name

puts "what's your name "
name = gets.chomp  # chomp remove /n from the output 
puts name 

puts "enter a number "
num = gets.to_i       # gets always return string 
puts num * 2 