class Employee 
  attr_reader :name, :title, :salary 
  attr_accessor :boss 

  def initialize(name, title, salary, boss) 
    @name = name 
    @title = title 
    @salary = salary
    self.boss = boss
  end  

  def boss =(boss) 
    @boss = boss 
  end 

  def bonus(multiplier) 
   @salary * multiplier
  end 
end 
