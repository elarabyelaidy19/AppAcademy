require "employee"

class Startup

  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name 
    @funding = funding
    @salaries = salaries
    @employees = []
  end 

  def valid_title?(title)
    if @salaries.include?(title)
      return true
    else
      return false 
    end 
  end 

  def >(another_startup)
    self.funding.>(another_startup.funding)
  end 

  def hire(employee_name, title)
    if valid_title?(title)
     @employees <<  Employee.new(employee_name, title)
    else 
      raise "title is not valid"
    end 
  end 

  def size
    @employees.length
  end 

  def pay_employee(employee)
    pays = @salaries[employee.title]
    if @funding > pays 
      employee.pay(pays)
      @funding -= pays
    else 
      raise " startup have not enough money"
    end
  end 

  def payday
    @employees.each do |employee|
      self.pay_employee(employee)
    end 
  end 

  def average_salary
    sum = 0 

    employees.each do |employee|
      sum += @salaries[employee.title]
    end 

    sum / @employees.length.to_f
  end 

  def close
    @employees = []
    @funding = 0
    
  end 

  def acquire(startup)
    @funding += startup.funding

    startup.salaries.each do |title, amount|
      if !salaries.include?(title)
        @salaries[title] = amount
      end 
    end 
    
    @employees += startup.employees
    startup.close
  end
end
