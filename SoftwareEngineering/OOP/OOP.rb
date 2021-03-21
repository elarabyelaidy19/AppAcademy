class Dog 
  attr_reader :name, :age  # attr_reader instead of getter methods
  attr_writer :name, :age, :fav_food  # attr_writer insted of setter methods 
  attr_accessor :name, :age  # attr_accessor instead of both setters and getters

  def initialize(name, age, fav_food)
    @name = name 
    @age = age 
    @fav_food = fav_food
  end 

end 

  dog = Dog.new("snoopy", 4, "milk")

  dog.age = 8
  p dog.age
  p dog
  p dog.fav_food = "meat"
  p dog