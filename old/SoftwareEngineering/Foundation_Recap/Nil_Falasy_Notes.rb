# nil and false are the only falsy values 

val = nil 
if val 
  p "it is true"
else 
  p "it is false"
end 

# => false since nil is a falsy value 

#=========================================================================

# What does logical OR really do?

a || b 

# when a is truthy, return a 
# when a is falsy , return b 

true || 42          # => true
42 || true          # => 42
false || 42         # => 42
42 || false         # => 42
false || "hello"    # => "hello"
nil || "hello"      # => "hello"
"hi" || "hello"     # => "hi"
0 || true           # => 0
false || nil  

#==============================================================

# default arguments 

def greet(person = nil)
  if person.nil?
    person = "you"
  end 

  p "hey" + person
end 

greet("elaraby")  # value argument 
greet()           # nil argument 

# refactoring above code with || operator 

def greet(person = nil)
  person = person || "you"     # person ||= "you"  for shorthand 
  p "hey" +  person
end 

greet("elaraby")  # value argument 
greet()           # nil argument 


#===================================================================

# default procs 

def call_the_proc(val, &proc)
  proc ||= Proc.new {|data| data.upcase + "!!"}
  proc.call(val)
end 

p call_that_proc("hey")                                             # => "HEY!!"
p call_that_proc("programmers") { |data| data * 3 }                 # => "programmersprogrammersprogrammers"
p call_that_proc("code") { |data| "--" + data.capitalize + "--"}    # => "--Code--"

# ====================================================================

# lazy initialization 

class Resturant 
  attr_accessor :name, :chefs, :menu 

  def initialize 
    @name = name 
    @chefs = chefs
  end 

  def menu
    @menu ||= ["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
  end 
end 

five_star_restaurant = Restaurant.new("Appetizer Academy", ["Marta", "Jon", "Soon-Mi"])

p five_star_restaurant
p five_star_restaurant.menu
p five_star_restaurant


