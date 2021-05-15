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

class Manager < Employee 
  attr_reader :employee 

  def initialize(name, title, salary, boss = nil) 
    super(name, title, salary, boss) 
    @employee = [] 
  end 

  def add_employee(subordinate) 
    employee << subordinate 
    subordinate
  end 

  def bonus(multiplier) 
    self.total_subsalary * multiplier
  end 

  def total_subsalary
    total_subsalary = 0 
    self.employee.each do |employee| 
      if employee.is_a(Manager) 
        total_subsalary += employee.salary + employee.total_subsalary 
      else  
        total_subsalary += employee.salary 
      end 
    end 
    total_subsalary
  end 
end 


