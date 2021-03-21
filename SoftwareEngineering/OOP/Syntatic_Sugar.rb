class Person 
  attr_reader :first_name, :last_name, :age 

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age 
  end 
  
  def ==(other_person)
    self.first_name == other_person.first_name
  end 

  def ==(other_person)
    self.last_name == other_person.last_name
  end 

  def ==(other_person)
    self.age == other_person.age 
  end 


 

end 

person_1 = Person.new("elaraby", "elaidy", 63)
person_2 = Person.new("hassan", "elaidy", 23)
 
p person_1 == person_2  # syntatic sugar 


class Queue 
  def initialize
    @line = []
  end 

  def [](position)
    @line[position]
  end 

  def []=(position, ele)
    @line[position] = ele
  end 

  def add(ele)
    @line << ele
  end 

  def remove
    @line.shift
  end 
end 
  grocery_checkout = Queue.new
  grocery_checkout.add("banana")
  grocery_checkout.add("tomato")
  grocery_checkout.remove

  grocery_checkout.[](0) # without 
  grocery_checkout[0]    # with syntatic sugar
  
  grocery_checkout.[]=(0, "bota")     # without
  grocery_checkout[0] = "bota"        # with
