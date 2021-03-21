class Dog

  def initialize(name, breed, age, bark, favorite_foods)
    @name = name 
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end 

  def name 
    @name 
  end 

  def breed
    @breed 
  end 

  def age
    @age
  end 

  def age=(number)
    @age = number
  end 

  def favorite_foods
    @favorite_foods
  end 

  def bark
    if age > 3
      return @bark.upcase
    else 
      return @bark.downcase
    end 
  end 

  def favorite_food?(item)
   @favorite_foods.map(&:downcase).include?(item.downcase)
  end 
end 


dog_1 = Dog.new("Fido","German Shepard", 3, "Bork!", ["Bacon", "Chicken"] )

dog_1.age = 42