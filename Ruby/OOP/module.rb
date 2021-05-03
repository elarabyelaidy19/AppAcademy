module Greetable
  def greet
    "Hello, my name is #{self.name}"
  end
end

class Human
  include Greetable
  
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end
end

class Robot
  include Greetable
  
  def name
    "Robot Model #2000"
  end
end

####################################################### 

module Findable
  def objects
    @objects ||= {}
  end

  def find(id)
    objects[id]
  end

  def track(id, object)
    objects[id] = object
  end
end

class Cat
  extend Findable
  
  def initialize(name)
    @name = name
    Cat.track(@name, self)
  end
end

Cat.new("Gizmo")
Cat.find("Gizmo") # finds Gizmo Cat object