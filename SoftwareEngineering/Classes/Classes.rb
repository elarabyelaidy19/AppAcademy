# creat class 
class Cats
  def initialize(name, color, age)
    @name = name 
    @color = color
    @age = age 
  end 
end 

# instance of the class 

cat_1 = Cats.new("kitty", "white", 4) # object of the class 
cat_2 = Cats.new("shalaby", "blue", 3)

p cat_1
p cat_2 


class Student 
  def initialize(name, id, grade, age) # initialize method 
    @name = name 
    @id = id 
    @grade = grade 
    @age = age 
  end 

  def get_name # getter method 
    @name 
  end 
  
  # by convention getter methods have the same name as the attribute they are returning as below.
  def age 
    @age 
  end  
 
  def id=(number)  # setter method 
    @id = number
  end 
end 

student_1 = Student.new("elaraby", 123, 440.0, 24)
student_2 = Student.new("tarifi", 133, 420.0, 22)


p student_1
p student_1
p student_1.get_name
p student_2.age
student_1.id = 29
p student_1
# getter methods

# ========================================

class Car
  @@num_wheels = 4 # class variables 

  def initialize(color)
    @color = color
  end

  # getter for @color instance variable
  def color
    @color
  end

  # getter for @@num_wheels class variable
  def num_wheels
    @@num_wheels
  end
end

car_1 = Car.new("red")
p car_1.num_wheels    # 4

car_2 = Car.new("black")
p car_2.num_wheels    # 4

#====================================

class Car
  @@num_wheels = 4

  def self.upgrade  # class method change all class instances @@num_wheels
    @@num_wheels = 0
  end

  def initialize(color)
    @color = color
  end

  def num_wheels
    @@num_wheels
  end
end

car_1 = Car.new("red")
car_2 = Car.new("black")

p car_1.num_wheels    # 4
p car_2.num_wheels    # 4

Car.upgrade

p car_1.num_wheels    # 0
p car_2.num_wheels    # 0

car_3 = Car.new("silver")
p car_3.num_wheels    # 0

#===============================
# class constant prevent class variables from being changed for safety, Class constant names must be capitalized.

class Car
  NUM_WHEELS = 4  # class constant 


  def initialize(color)
    @color = color
  end

  def num_wheels
    NUM_WHEELS
  end
end


car_1 = Car.new("red")
car_2 = Car.new("black")

p car_1.num_wheels    # 4
p car_2.num_wheels    # 4

Car.upgrade

# ==================================

# class method 

class School
  def initialize(address, occ)
    @address = address
    @occ = occ
  end 

  def introduce  # instance method
    @address + " full of :" + @occ
  end 
    
  def self.rank  # class method 
    "100"
  end
end 

school_1 = School.new("elma3alwa", "400")
 p school_1.introduce                       # calling instance method using instance of the class 

school_2 = School.new("sadaka", "700")
p school_2.introduce  

p School.rank  # clling class method using class name

# ======================================

class Dog 
  def initialize(name)
    @name = name 
  end

  def self.bark 
    "woooof!"
  end 

  def self.compare(dog_1, dog_2)
    if (dog_1.name.length > dog_2.name.length)
      return dog_1
    else 
      return dog_2
    end 
  end 

  def name
    @name 
  end 
end 


d1 = Dog.new("snooooopy")
d2 = Dog.new("puppy")

p Dog.compare(d1, d2)

#=============================================================================================
# class patching 
